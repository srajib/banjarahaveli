<?php
/*---------------------------------------------------------------
# SP Tab - Next generation tab module for joomla
# Version 1.5.0
# ---------------------------------------------------------------
# Author - JoomShaper http://www.joomshaper.com
# Copyright (C) 2010 - 2011 JoomShaper.com. All Rights Reserved.
# license - PHP files are licensed under  GNU/GPL V2
# license - CSS  - JS - IMAGE files  are Copyrighted material 
# Websites: http://www.joomshaper.com - http://www.joomxpert.com
-----------------------------------------------------------------*/
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

JHTML::_('behavior.mootools');
$uniqid				= $module->id;
$body_height    	= $params->get('body_height','1') ? 'true' : 'false';
$fixed_height		= $params->get('fixed_height','300');
$fxspeed			= $params->get('fx_speed','400');
$activator			= $params->get('activator','click');
$btnPos				= $params->get('nav_pos','top');
$body_padding		= $params->get('body_padding','10px');
$animation			= $params->get('animation','scroll:horizontal');
$transition			= $params->get('transition','linear');
$height				= $params->get('nav_height',30);
$style				= $params->get('style','style1');
$color				= $params->get('color','sptab_blue');

//Custom Style
$header_bg 			= $params->get('header_bg');
$nav_bg 			= $params->get('nav_bg');
$nav_text 			= $params->get('nav_text');
$nav_hover			= $params->get('nav_hover');
$nav_hover_text		= $params->get('nav_hover_text');
$nav_active			= $params->get('nav_active');
$nav_active_text	= $params->get('nav_active_text');
$nav_border_color	= $params->get('nav_border_color');
$nav_border_pos		= $params->get('nav_border_pos');
$nav_wborder		= $params->get('nav_wborder');
$nav_margin			= $params->get('nav_margin');
$nav_margin_val		= $params->get('nav_margin_val');
$body_bg			= $params->get('body_bg');
$body_text			= $params->get('body_text');
$border_color		= $params->get('border_color');
$body_wborder		= $params->get('body_wborder');

//Detect mootools version
$moo=JPluginHelper::isEnabled('system', 'mtupgrade') ? '12' : '11';

$document = &JFactory::getDocument();
$document->addScript(JURI::base(true) . '/modules/mod_sptab/assets/js/sptab_moo' . $moo . '.js');//Load javascript
$document->addStylesheet(JURI::base(true) . '/modules/mod_sptab/assets/css/' . $style . '.css.php?id=' .$uniqid);//Load css

$css = '';
$css 		.= '#sptab' . $uniqid . ' .tabs_mask, #sptab' . $uniqid . ' ul.tabs_container li span {height:' . $height . 'px;line-height:' . $height . 'px;}';
$css 	 	.= '#sptab' . $uniqid . ' .tab-padding {padding:' . $body_padding . '}';

if ($style=='custom') {
	$css 	.= '#sptab' . $uniqid . ' .tabs_mask {background-color:' . $header_bg . '}';
	$css	.= '#sptab' . $uniqid . ' ul.tabs_container li.tab {background-color:' . $nav_bg . '; color:' . $nav_text . '; margin-' . $nav_margin . ':' . $nav_margin_val . 'px; border-' . $nav_border_pos . ':' . $nav_wborder . 'px solid ' . $nav_border_color . ';}';
	$css 	.= '#sptab' . $uniqid . ' ul.tabs_container li.tab.tab_over {background-color:' . $nav_hover . '; color:' . $nav_hover_text . '}';
	$css 	.= '#sptab' . $uniqid . ' ul.tabs_container li.tab.active {background-color:' . $nav_active . '; color:' . $nav_active_text . '}';
	$css 	.= '#sptab' . $uniqid . ' {background-color:' . $body_bg . '; color:' . $body_text . '; border:' . $body_wborder . 'px solid ' . $border_color . '}';
}

$document->addStyleDeclaration($css);

require_once (dirname(__FILE__).DS.'helper.php');
$list = modspTabHelper::getTabs($params);
require(JModuleHelper::getLayoutPath('mod_sptab'));
?>
