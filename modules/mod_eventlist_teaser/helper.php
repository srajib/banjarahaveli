<?php
/**
 * THIS FILE IS BASED ON MOD_EVENTLIST_WIDE FROM SCHLU.NET
 * @version 1.0 $Id: mod_eventlist_teaser.php 003 2010-01-21 19:12:52Z $
 * @package Joomla
 * @subpackage EventList Teaser Module
 * @copyright (C) 2010 ezuri.de
 * @license GNU/GPL, see LICENCE.php
 * EventList is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License 2
 * as published by the Free Software Foundation.

 * You should have received a copy of the GNU General Public License
 * along with EventList; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

/**
 * EventList Moduleteaser helper
 *
 * @package Joomla
 * @subpackage EventList Teaser Module
 * @since		1.0
 */
class modEventListteaserHelper
{

	/**
	 * Method to get the events
	 *
	 * @access public
	 * @return array
	 */
	function getList(&$params)
	{
		global $mainframe;

		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();
		$user_gid	= (int) $user->get('aid');

		//all upcoming events
		if ($params->get( 'type' ) == 1) {
			$where  = ' WHERE a.dates >= CURDATE()';
			$where .= ' AND a.published = 1';
			$order  = ' ORDER BY a.dates, a.times';
		}
		
		//archived events only
		if ($params->get( 'type' ) == 2) {
			$where = ' WHERE a.published = -1';
			$order = ' ORDER BY a.dates DESC, a.times DESC';
		}
		
		//currently running events only
		if ($params->get( 'type' ) == 3) {
			$where  = ' WHERE a.published = 1';			
			$where .= ' AND ( a.dates = CURDATE()';
			$where .= ' OR ( a.enddates >= CURDATE() AND a.dates <= CURDATE() ))';
			$order  = ' ORDER BY a.dates, a.times';
		}

		//clean parameter data
		$catid 	= trim( $params->get('catid') );
		$venid 	= trim( $params->get('venid') );
		$state	= JString::strtolower(trim( $params->get('stateloc') ) );

		//Build category selection query statement
		if ($catid)
		{
			$ids = explode( ',', $catid );
			JArrayHelper::toInteger( $ids );
			$categories = ' AND (c.id=' . implode( ' OR c.id=', $ids ) . ')';
		}
		
		//Build venue selection query statement
		if ($venid)
		{
			$ids = explode( ',', $venid );
			JArrayHelper::toInteger( $ids );
			$venues = ' AND (l.id=' . implode( ' OR l.id=', $ids ) . ')';
		}
		
		//Build state selection query statement
		if ($state)
		{
			$rawstate = explode( ',', $state );
			
			foreach ($rawstate as $val)
			{
				if ($val) {
					$states[] = '"'.trim($db->getEscaped($val)).'"';
				}
			}
	
			JArrayHelper::toString( $states );
			$stat = ' AND (LOWER(l.state)='.implode(' OR LOWER(l.state)=',$states).')';
		}
		
		//perform select query
		$query = 'SELECT a.title, a.dates, a.enddates, a.datdescription, a.times, a.endtimes, a.datimage, l.venue, l.state, l.locimage, l.city, c.catname,'
				.' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug,'
				.' CASE WHEN CHAR_LENGTH(l.alias) THEN CONCAT_WS(\':\', l.id, l.alias) ELSE l.id END as venueslug,'
				.' CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(\':\', c.id, c.alias) ELSE c.id END as categoryslug'
				.' FROM #__eventlist_events AS a'
				.' LEFT JOIN #__eventlist_venues AS l ON l.id = a.locid'
				.' LEFT JOIN #__eventlist_categories AS c ON c.id = a.catsid'
				. $where
				.' AND c.access <= '.$user_gid
				.($catid ? $categories : '')
				.($venid ? $venues : '')
				.($state ? $stat : '')
				. $order
				.' LIMIT '.(int)$params->get( 'count', '2' )
				;

		$db->setQuery($query);
		$rows = $db->loadObjectList();
		
		//assign datemethod value to jview
		jimport('joomla.application.component.view');
		JView::assignRef('datemethod', $params->get('datemethod', 1));
		JView::assignRef('use_modal', $params->get('use_modal', 0));
		
		if ($params->get('use_modal', 0)) {
			JHTML::_('behavior.modal');
		}

		//Loop through the result rows and prepare data
		$i		= 0;
		$lists	= array();
		foreach ( $rows as $row )
		{
			//create thumbnails if needed and receive imagedata
			$dimage = ELImage::flyercreator($row->datimage, 'event');
			$limage = ELImage::flyercreator($row->locimage);
						
			//cut title
			$length = strlen(htmlspecialchars( $row->title ));
			
			if ($length > $params->get('cuttitle', '25')) {
				$row->title = substr($row->title, 0, $params->get('cuttitle', '18'));
				$row->title = $row->title.'...';
			}
			

			$lists[$i]->title			= htmlspecialchars( $row->title, ENT_COMPAT, 'UTF-8' );
			$lists[$i]->venue			= htmlspecialchars( $row->venue, ENT_COMPAT, 'UTF-8' );
			$lists[$i]->catname		= htmlspecialchars( $row->catname, ENT_COMPAT, 'UTF-8' );
			$lists[$i]->state			= htmlspecialchars( $row->state, ENT_COMPAT, 'UTF-8' );		
			$lists[$i]->city	  	= htmlspecialchars( $row->city, ENT_COMPAT, 'UTF-8' );		      	
			$lists[$i]->eventlink	= $params->get('linkevent', 1) ? JRoute::_( EventListHelperRoute::getRoute($row->slug) ) : '';
			$lists[$i]->venuelink	= $params->get('linkvenue', 1) ? JRoute::_( EventListHelperRoute::getRoute($row->venueslug, 'venueevents') ) : '';
			$lists[$i]->categorylink	= $params->get('linkcategory', 1) ? JRoute::_( EventListHelperRoute::getRoute($row->categoryslug, 'categoryevents') ) : '';
			$lists[$i]->date 			= modEventListteaserHelper::_format_date($row, $params);
			$lists[$i]->day 			= modEventListteaserHelper::_format_day($row, $params);
			$lists[$i]->dayname		= modEventListteaserHelper::_format_dayname($row);
			$lists[$i]->daynum 		= modEventListteaserHelper::_format_daynum($row);
			$lists[$i]->month 		= modEventListteaserHelper::_format_month($row);
			$lists[$i]->year 			= modEventListteaserHelper::_format_year($row);

			$lists[$i]->time 			= $row->times ? modEventListteaserHelper::_format_time($row->dates, $row->times, $params) : '' ;
			$lists[$i]->eventimage		= JURI::base(true).'/'.$dimage['thumb'];
			$lists[$i]->eventimageorig	= JURI::base(true).'/'.$dimage['original'];
			$lists[$i]->venueimage		= JURI::base(true).'/'.$limage['thumb'];
			$lists[$i]->venueimageorig	= JURI::base(true).'/'.$limage['original'];
			
			// Hint: Thanks for checking the code. If you want to display the event description in the module use the following command in your layout:
			// echo $item->eventdescription; 
			// Note that all html elements will be removed
		
			 
			$length = $params->get( 'descriptionlength' );
			$etc = '...';

			//strip html tags but leave <br /> tags
			//entferne html tags bis auf Zeilenumbrüche
			$description = strip_tags($row->datdescription, "<br>");
			
			//switch <br /> tags to space character
			//wandle zeilenumbrüche in leerzeichen um
			if ($params->get( 'br' ) == 0) {
			 $description = str_replace('<br />',' ',$description);
			}
			//
			if (strlen($description) > $length) {
       			$length -= strlen($etc);
        		$description = preg_replace('/\s+?(\S+)?$/', '', substr($description, 0, $length+1));
				$lists[$i]->eventdescription = substr($description, 0, $length).$etc;
			} else {
				$lists[$i]->eventdescription	= $description;
			}
			
			$i++;
		}     
		
		return $lists;
	}
	
  /**
   *format days
   *
   */        
	function _format_day($row, &$params)
	{
		//Get needed timestamps and format
		$yesterday_stamp	= mktime(0, 0, 0, date("m") , date("d")-1, date("Y"));
		$yesterday 		  	= strftime("%Y-%m-%d", $yesterday_stamp);
		$today_stamp	  	= mktime(0, 0, 0, date("m") , date("d"), date("Y"));
		$today 			    	= date('Y-m-d');
		$tomorrow_stamp 	= mktime(0, 0, 0, date("m") , date("d")+1, date("Y"));
		$tomorrow 		  	= strftime("%Y-%m-%d", $tomorrow_stamp);
		
		$dates_stamp	  	= strtotime($row->dates);
		$enddates_stamp		= $row->enddates ? strtotime($row->enddates) : null;
    

			//check if today or tomorrow or yesterday and no current running multiday event
			if($row->dates == $today && empty($enddates_stamp)) {
				$result = JText::_( 'TODAY' );
			} elseif($row->dates == $tomorrow) {
				$result = JText::_( 'TOMORROW' );
			} elseif($row->dates == $yesterday) {
				$result = JText::_( 'YESTERDAY' );
			}
				else {
				
		    //if daymethod show day 
	    	if($params->get('daymethod', 1) == 1) {				

		     	//single day event
		     	$date = strftime('%A', strtotime( $row->dates ));
		     	$result = JText::sprintf('ON DATE', $date);
			
		    	//Upcoming multidayevent (From 16.10.2010 Until 18.10.2010)
		    	if($dates_stamp > $tomorrow_stamp && $enddates_stamp) {
		    	$startdate = strftime('%A', strtotime( $row->dates ));
		  		$result = JText::sprintf('FROM', $startdate);
		    	}
			
		    	//current multidayevent (Until 18.08.2008)
		    	if( $row->enddates && $enddates_stamp > $today_stamp && $dates_stamp <= $today_stamp ) {
		  		//format date
		  		$result = strftime('%A', strtotime( $row->enddates ));
		  		$result = JText::sprintf('UNTIL', $result);
		    	}			 
		    	
	  		}	
	  		
	  		// show day difference
	  		 else {
	     		//the event has an enddate and it's earlier than yesterday
		  	  if ($row->enddates && $enddates_stamp < $yesterday_stamp) {
	   			$days = round( ($today_stamp - $enddates_stamp) / 86400 );
	   			$result = JText::sprintf( 'ENDED DAYS AGO', $days );

      		//the event has an enddate and it's later than today but the startdate is today or earlier than today
	     		//means a currently running event with startdate = today 
		    	} elseif($row->enddates && $enddates_stamp > $today_stamp && $dates_stamp <= $today_stamp) {
	   			$days = round( ($enddates_stamp - $today_stamp) / 86400 );
	   			$result = JText::sprintf( 'DAYS LEFT', $days );
           				
    			//the events date is earlier than yesterday
	     		} elseif($dates_stamp < $yesterday_stamp) {
	   			$days = round( ($today_stamp - $dates_stamp) / 86400 );
	   			$result = JText::sprintf( 'DAYS AGO', $days );
				
	     		//the events date is later than tomorrow
	     		} elseif($dates_stamp > $tomorrow_stamp) {
	   			$days = round( ($dates_stamp - $today_stamp) / 86400 );
	   			$result = JText::sprintf( 'DAYS AHEAD', $days );
	     		}
         }
        }
		return $result;
	}
	/**
	 * Method to format date information
	 *
	 * @access public
	 * @return string
	 */
	function _format_date($row, &$params)
	{
  		$enddates_stamp		= $row->enddates ? strtotime($row->enddates) : null;

			//single day event
			if (empty($enddates_stamp)) {
			$date = strftime($params->get('formatdate', '%d.%m.%Y'), strtotime( $row->dates.' '.$row->times ));
			$result = JText::sprintf('ON DATE', $date);
			}
		  	else {	
		  	//multidayevent (From 16.10.2008 Until 18.08.2008)
				$startdate = strftime($params->get('formatdate', '%d.%m.%Y'), strtotime( $row->dates ));
				$enddate = strftime($params->get('formatdate', '%d.%m.%Y'), strtotime( $row->enddates ));
				$result = JText::sprintf('FROM UNTIL', $startdate, $enddate);			
	     }
				
		return $result;
	}
	/**
	 * Method to format time information
	 *
	 * @access public
	 * @return string
	 */
	function _format_time($date, $time, &$params)
	{
		$time = strftime( $params->get('formattime', '%H:%M'), strtotime( $date.' '.$time ));
		$result = JText::sprintf($time);	
		return $result;
	}

/*Calendar*/

	function _format_dayname($row)
	{
	    $date	  = strtotime($row->dates);
      $result = strftime("%A", $date);
		return $result;
	}
	function _format_daynum($row)
	{
	    $date	  = strtotime($row->dates);
      $result = strftime("%d", $date);
		return $result;
	}
	function _format_year($row)
	{
	    $date	  = strtotime($row->dates);
      $result = strftime("%Y", $date);
		return $result;
	}	
	function _format_month($row)
	{
	    $date	  = strtotime($row->dates);
      $result = strftime("%b", $date);
         /*htmlentities for german month March->März*/
		return htmlentities($result);
	}	
}
