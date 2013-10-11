<?php
/**
 * yvComment - A User Comments Component, developed for Joomla 1.5
 * @version		$Id: view.html.php 19 2010-05-25 15:05:48Z yvolk $
 * @package yvComment
 * @(c) 2007-2009 yvolk (Yuri Volkov), http://yurivolkov.com. All rights reserved.
 * @license GPL
 **/
defined('_JEXEC') or die( 'Restricted access' );

if (function_exists('jimport')) {
	// yvolk 2008-07-09 Somehow it is not found sometimes...
	jimport( 'joomla.application.component.view');
}

class yvcommentViewListofcomments extends JView
{
	public $CommentTypeId = 0;
	var $_doEcho = true;
	// '', 'plugin', 'module'
	var $_DisplayTo = '';

	var $commentLevel = 1;
	// Comments of current level
	var $items = null;
	// Pagination of current level
	var $pagination = null;

	function __construct($config = array())	{
		parent::__construct($config);
		$this->CommentTypeId = intval($config['comment_type_id']);
	}

	function getOutput()
	{
		return $this->_output;
	}

	function display( $tpl = null)
	{
		global $mainframe;
		$yvComment = &yvCommentHelper::getInstance($this->CommentTypeId);
		$result = '';
		$message = array();
		$items = null;
		$this->commentLevel = 1;

		$ShowComments = false;

		$ShowFilters = false;
		$ShowPagination = false;
		$ShowControlForm = false;
		 
		//echo 'yvcommentViewListofcomments->display()';

		$DisplayTo = $yvComment->DisplayTo();
		switch ($DisplayTo) {
			case 'module' :
			case 'plugin' :
				$this->_doEcho = false;
		}
		$this->_output = null;

		$print = JRequest::getBool('print');

		// Initialize some variables
		$user		=& JFactory::getUser();

		// Get the page/component configuration
		$params =& $yvComment->PageParameters();

		// Get information from model
		$task =& $this->get('task');
		$ShowCommentsOnComment = $this->get('ShowCommentsOnComment');

		if ($mainframe->isAdmin()) {
			$ShowFilters = true;
		}
		if ($yvComment->IsPaginationEnabled()) {
			// Pagination is set to true by default,
			// to avoid too long lists
			// (there may be too many comments in the list...)
			$ShowPagination = $params->get('show_pagination', true);
		}

		if ($yvComment->isDebug()) {
			$message[] = 'Pagination enabled=' . $yvComment->IsPaginationEnabled()
			. '; Params=' . $params->get('show_pagination')
			. '; ShowPagination=' . $ShowPagination
			. '; moduleclass_sfx=' . $params->get('moduleclass_sfx','(not set)') 
			. '; task=' . $task;
			$message[] = 'orderby_pri=' . $yvComment->getPageValue('orderby_pri','(not set)');
		}
		if ($ShowPagination) {
			$yvComment->setPagination();
		}

		$this->pagination = $this->get('pagination');
		$nCommentsTotal = ($this->pagination ? $this->pagination->total : 0);

		$ShowComments = ($nCommentsTotal > 0);
		if (!$ShowComments) {
			$ShowPagination = false;
		}
		if ($ShowComments) {
			$this->items =& $this->get('data');
				
			// on this page
			$nComments = count($this->items);
			if ($nComments >0 && ($DisplayTo != 'module')) {
				yvCommentHelper::setShowLogo(true);
			}
				
			for ($i=0; $i < $nComments; $i++) {
				// Unify the introtext and fulltext fields... for compatibility with content plugins...
				$item = & $this->items[$i];
				$yvComment->PrepareItemForView($item);
			}
		}
		//$message[] = 'nComments=' . $nComments;

		// $message is an array of messages
		$message = array_merge ($message, $this->get('Message'));

		// Filters and pagination are inside Control Form
		$ShowControlForm = $ShowFilters || $ShowPagination;
		$ShownSomething = ($ShowComments || $ShowControlForm);
		if (!$ShownSomething) {
			if ($DisplayTo == 'plugin' || $DisplayTo == 'module') {
				// Hide yvComment
				// TODO some param to hide it... $params->set('HideyvComment', true);
			} else {
				$message[] = '<br />No comments';
			}
		}

		$ShowTemplate = (boolean) ($ShownSomething || (count($message)>0));
		if ($ShowTemplate) {
			if (count($message)>0) {
				yvCommentHelper::setShowLogo(true);
			}

			$this->assignRef('print', $print);
			$this->assignRef('user',		$user);
			$this->assign('task' , $task);
			$this->assign('allow_comments_on_comment', $yvComment->getConfigValue('allow_comments_on_comment', '0'));

			$this->assign('message' , $message);

			$params->def('author_linkable', $yvComment->getConfigValue('author_linkable', '0'));
			$params->def('comment_linkable', $yvComment->getConfigValue('comment_linkable', '0'));
				
			$params->def('orderby_pri', $yvComment->getPageValue('orderby_pri'));

			$params->def('execute_content_plugins', $yvComment->getConfigValue('execute_content_plugins', '0'));

			$params->set('nCommentsTotal', $nCommentsTotal);
			$params->set('ShowComments', $ShowComments);
			$params->set('ShowCommentsOnComment', $ShowCommentsOnComment);
			$params->set('ShowFilters', $ShowFilters);
			$params->set('yvcomment_show_pagination', $ShowPagination);
			$params->set('ShowControlForm', $ShowControlForm);

			$params->def('date_format', JText::_('DATE_FORMAT_LC2'));
			$params->set('filter_state', $this->get('Filter_state'));

			$this->assignRef('params',	$params);

			//echo 'yvcommentViewComment task="' . $task . '"<br/>';
			
			//return parent::display($tpl);
			$result = $this->loadTemplate($tpl);
		}
		if (JError::isError($result)) {
			return $result;
		}
		if ($this->_doEcho) {
			echo $result;
		}
	}
	
	// This is needed before retrieving comments on this Comment
	// $item - the Comment
	function &setParentComment(&$item) {
		$item_out = null;
		$model =& $this->getModel();
		if ($model) {
			$model->setData($item);
			$this->items =& $this->get('data');
			assert (count($this->items) == 1 ); 
			$item_out = $this->items[0];
		}
		return $item_out;
	}

	function LoadChildren() {
		$yvComment = &yvCommentHelper::getInstance($this->CommentTypeId);
		$Ok = $this->get('Children');
		if ($Ok) {
			foreach ($this->items as $item) {
				if (isset($item->children)) {
					foreach ($item->children as $child) {
						$yvComment->PrepareItemForView($child);
					}
				}
			}
		}
		return $Ok;
	}
}
?>