<?php
/**
 * @version 1.0 $Id: categories.php 136 2008-08-04 14:33:18Z schlu $
 * @package Joomla
 * @subpackage QuickFAQ
 * @copyright (C) 2005 - 2008 Christoph Lukes
 * @license GNU/GPL, see LICENSE.php
 * QuickFAQ is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License 2
 * as published by the Free Software Foundation.

 * QuickFAQ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with QuickFAQ; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.model');

/**
 * QuickFAQ Component Categories Model
 *
 * @package Joomla
 * @subpackage QuickFAQ
 * @since		1.0
 */
class QuickfaqModelCategories extends JModel
{
	/**
	 * Pagination object
	 *
	 * @var object
	 */
	var $_pagination = null;

	/**
	 * Categorie id
	 *
	 * @var int
	 */
	var $_id = null;

	/**
	 * Constructor
	 *
	 * @since 1.0
	 */
	function __construct()
	{
		parent::__construct();

		$array = JRequest::getVar('cid',  0, '', 'array');
		$this->setId((int)$array[0]);

	}

	/**
	 * Method to set the category identifier
	 *
	 * @access	public
	 * @param	int Category identifier
	 */
	function setId($id)
	{
		// Set id and wipe data
		$this->_id	 = $id;
		$this->_data = null;
	}

	/**
	 * Method to get categories item data
	 *
	 * @access public
	 * @return array
	 */
	function getData()
	{
		global $mainframe;
		
		static $items;

		if (isset($items)) {
			return $items;
		}
		
		$limit				= $mainframe->getUserStateFromRequest( 'com_quickfaq.limit', 'limit', $mainframe->getCfg('list_limit'), 'int');
		$limitstart 		= $mainframe->getUserStateFromRequest( 'com_quickfaq.limitstart', 'limitstart', 0, 'int' );
		$filter_order		= $mainframe->getUserStateFromRequest( 'com_quickfaq.categories.filter_order', 		'filter_order', 	'c.ordering', 'cmd' );
		$filter_order_Dir	= $mainframe->getUserStateFromRequest( 'com_quickfaq.categories.filter_order_Dir',	'filter_order_Dir',	'', 'word' );
		$filter_state 		= $mainframe->getUserStateFromRequest( 'com_quickfaq.categories.filter_state', 'filter_state', '', 'word' );
		$search 			= $mainframe->getUserStateFromRequest( 'com_quickfaq.categories.search', 'search', '', 'string' );
		$search 			= $this->_db->getEscaped( trim(JString::strtolower( $search ) ) );
		
		$orderby 	= ' ORDER BY '.$filter_order.' '.$filter_order_Dir.', c.ordering';
		
		$where = array();
		if ( $filter_state ) {
			if ( $filter_state == 'P' ) {
				$where[] = 'c.published = 1';
			} else if ($filter_state == 'U' ) {
				$where[] = 'c.published = 0';
			}
		}
		
		$where 		= ( count( $where ) ? ' WHERE ' . implode( ' AND ', $where ) : '' );
		
		//select the records
		//note, since this is a tree we have to do the limits code-side
		if ($search) {			
			
			
			$query = 'SELECT c.id'
					. ' FROM #__quickfaq_categories AS c'
					. ' WHERE LOWER(c.title) LIKE '.$this->_db->Quote( '%'.$this->_db->getEscaped( $search, true ).'%', false )
					. $where
					;
			$this->_db->setQuery( $query );
			$search_rows = $this->_db->loadResultArray();					
		}
		
		$query = 'SELECT c.*, u.name AS editor, g.name AS groupname, COUNT(rel.catid) AS nrassigned'
					. ' FROM #__quickfaq_categories AS c'
					. ' LEFT JOIN #__quickfaq_cats_item_relations AS rel ON rel.catid = c.id'
					. ' LEFT JOIN #__groups AS g ON g.id = c.access'
					. ' LEFT JOIN #__users AS u ON u.id = c.checked_out'
					. $where
					. ' GROUP BY c.id'
					. $orderby
					;
		$this->_db->setQuery( $query );
		$rows = $this->_db->loadObjectList();
				
		//establish the hierarchy of the categories
		$children = array();
		
    	//set depth limit
   		$levellimit = 10;
		
    	foreach ($rows as $child) {
        	$parent = $child->parent_id;
       		$list 	= @$children[$parent] ? $children[$parent] : array();
        	array_push($list, $child);
        	$children[$parent] = $list;
    	}
    	
    	//get list of the items
    	$list = quickfaq_cats::treerecurse(0, '', array(), $children, false, max(0, $levellimit-1));

    	    	//eventually only pick out the searched items.
		if ($search) {
			$list1 = array();

			foreach ($search_rows as $sid )
			{
				foreach ($list as $item)
				{
					if ($item->id == $sid) {
						$list1[] = $item;
					}
				}
			}
			// replace full list with found items
			$list = $list1;
		}
		
    	$total = count( $list );

		jimport('joomla.html.pagination');
		$this->_pagination = new JPagination( $total, $limitstart, $limit );

		// slice out elements based on limits
		$list = array_slice( $list, $this->_pagination->limitstart, $this->_pagination->limit );
		
		return $list;
	}

	/**
	 * Method to get a pagination object for the categories
	 *
	 * @access public
	 * @return integer
	 */
	function &getPagination()
	{
		if ($this->_pagination == null) {
			$this->getData();
		}
		return $this->_pagination;
	}

	/**
	 * Method to (un)publish a category
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.0
	 */
	function publish($cid = array(), $publish = 1)
	{
		$user 	=& JFactory::getUser();

		if (count( $cid ))
		{
			if (!$publish) {
				// Add all children to the list
				foreach ($cid as $id)
				{
					$this->_addCategories($id, $cid);
				}
			} else {
				// Add all parents to the list
				foreach ($cid as $id)
				{
					$this->_addCategories($id, $cid, 'parents');
				}
			}
						
			$cids = implode( ',', $cid );

			$query = 'UPDATE #__quickfaq_categories'
				. ' SET published = ' . (int) $publish
				. ' WHERE id IN ('. $cids .')'
				. ' AND ( checked_out = 0 OR ( checked_out = ' . (int) $user->get('id'). ' ) )'
			;
			$this->_db->setQuery( $query );
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
		}
		return $cid;
	}

	/**
	 * Method to move a category
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.0
	 */
	function move($direction)
	{
		$row =& JTable::getInstance('quickfaq_categories', '');

		if (!$row->load( $this->_id ) ) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		if (!$row->move( $direction, 'parent_id = '.$row->parent_id )) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		
		return true;
	}

	/**
	 * Method to order categories
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.0
	 */
	function saveorder($cid = array(), $order)
	{
		$row =& JTable::getInstance('quickfaq_categories', '');
		
		$groupings = array();

		// update ordering values
		for( $i=0; $i < count($cid); $i++ )
		{
			$row->load( (int) $cid[$i] );
			
			// track categories
			$groupings[] = $row->parent_id;

			if ($row->ordering != $order[$i])
			{
				$row->ordering = $order[$i];
				if (!$row->store()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
			}
		}
		
		// execute updateOrder for each parent group
		$groupings = array_unique( $groupings );
		foreach ($groupings as $group){
			$row->reorder('parent_id = '.$group);
		}

		return true;
	}

	/**
	 * Method to remove a category
	 *
	 * @access	public
	 * @return	string $msg
	 * @since	1.0
	 */
	function delete($cids)
	{		
		// Add all children to the list
		foreach ($cids as $id)
		{
			$this->_addCategories($id, $cids);
		}
				
		$cids = implode( ',', $cids );

		$query = 'SELECT c.id, c.parent_id, c.title, COUNT( e.catid ) AS numcat'
				. ' FROM #__quickfaq_categories AS c'
				. ' LEFT JOIN #__quickfaq_cats_item_relations AS e ON e.catid = c.id'
				. ' WHERE c.id IN ('. $cids .')'
				. ' GROUP BY c.id'
				;
		$this->_db->setQuery( $query );

		if (!($rows = $this->_db->loadObjectList())) {
			JError::raiseError( 500, $this->_db->stderr() );
			return false;
		}
		
		$err = array();
		$cid = array();
		
		//TODO: Categories and its childs without assigned items will not be deleted if another tree has any item entry 
		foreach ($rows as $row) {
			if ($row->numcat == 0) {				
				$cid[] = $row->id;
			} else {
				$err[] = $row->title;
			}
		}
		
		if (count( $cid ) && count($err) == 0)
		{
			$cids = implode( ',', $cid );
			$query = 'DELETE FROM #__quickfaq_categories'
					. ' WHERE id IN ('. $cids .')';

			$this->_db->setQuery( $query );

			if(!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
		}

		if (count( $err )) {
			$cids 	= implode( ', ', $err );
    		$msg 	= JText::sprintf( 'ITEM ASSIGNED CATEGORY', $cids );
    		return $msg;
		} else {
			$total 	= count( $cid );
			$msg 	= $total.' '.JText::_('CATEGORIES DELETED');
			return $msg;
		}
	}
	
	/**
	 * Method to set the access level of the category
	 *
	 * @access	public
	 * @param integer id of the category
	 * @param integer access level
	 * @return	boolean	True on success
	 * @since	1.0
	 */
	function access($id, $access)
	{				
		$category  =& $this->getTable('quickfaq_categories', '');
		
		//handle childs
		$cids = array();
		$cids[] = $id;
		$this->_addCategories($id, $cids);
		
		foreach ($cids as $cid) {
			
			$category->load( (int)$cid );
			
			if ($category->access < $access) {				
				$category->access = $access;
			} else {
				$category->load( $id );
				$category->access = $access;
			}
			
			if ( !$category->check() ) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
			if ( !$category->store() ) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
			
		}

		//handle parents
		$pcids = array();
		$this->_addCategories($id, $pcids, 'parents');
				
		foreach ($pcids as $pcid) {
			
			if($pcid == 0 || $pcid == $id) {
				continue;
			}
			
			$category->load( (int)$pcid );
			
			if ($category->access > $access) {	

				$category->access = $access;
				
				if ( !$category->check() ) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				if ( !$category->store() ) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				
			}
		}
		return true;
	}
	
	/**
	 * Method to add children/parents to a specific category
	 *
	 * @param int $id
	 * @param array $list
	 * @param string $type
	 * @return oject
	 * 
	 * @since 1.0
	 */
	function _addCategories($id, &$list, $type = 'children')
	{
		// Initialize variables
		$return = true;
		
		if ($type == 'children') {
			$get = 'id';
			$source = 'parent_id';
		} else {
			$get = 'parent_id';
			$source = 'id';
		}

		// Get all rows with parent of $id
		$query = 'SELECT '.$get.
				' FROM #__quickfaq_categories' .
				' WHERE '.$source.' = '.(int) $id;
		$this->_db->setQuery( $query );
		$rows = $this->_db->loadObjectList();

		// Make sure there aren't any errors
		if ($this->_db->getErrorNum()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		
		// Recursively iterate through all children
		foreach ($rows as $row)
		{
			$found = false;
			foreach ($list as $idx)
			{
				if ($idx == $row->$get) {
					$found = true;
					break;
				}
			}
			if (!$found) {
				$list[] = $row->$get;
			}
			$return = $this->_addCategories($row->$get, $list, $type);
		}
		return $return;
	}
}
?>