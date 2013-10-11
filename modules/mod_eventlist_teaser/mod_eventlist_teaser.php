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

// get module helper
require_once (dirname(__FILE__).DS.'helper.php');

//require needed component classes
require_once(JPATH_SITE.DS.'components'.DS.'com_eventlist'.DS.'helpers'.DS.'helper.php');
require_once(JPATH_SITE.DS.'components'.DS.'com_eventlist'.DS.'helpers'.DS.'route.php');
require_once (JPATH_SITE.DS.'components'.DS.'com_eventlist'.DS.'classes'.DS.'image.class.php');

$list = modEventListteaserHelper::getList($params);

$document 	= & JFactory::getDocument();
$document->addStyleSheet(JURI::base(true).'/modules/mod_eventlist_teaser/tmpl/mod_eventlist_teaser.css');

if ($params->get('color') == 1) { 
$document->addStyleSheet(JURI::base(true).'/modules/mod_eventlist_teaser/tmpl/red.css');
}
if ($params->get('color') == 2) { 
$document->addStyleSheet(JURI::base(true).'/modules/mod_eventlist_teaser/tmpl/blue.css');
}
if ($params->get('color') == 3) { 
$document->addStyleSheet(JURI::base(true).'/modules/mod_eventlist_teaser/tmpl/green.css');
}


// check if any results returned
$items = count($list);
if (!$items) {
	return;
}

require(JModuleHelper::getLayoutPath('mod_eventlist_teaser'));
