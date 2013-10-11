<?php
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );

/**
 * SuperSleight PNG fix for IE6
 * plugin developed by Jovic Nikola
 * JS written by Drew McLellan (http://edgeofmyseat.com/)
 */
 
class plgSystemSspngfix extends JPlugin
{
	
	function plgSystemJwupf(& $subject, $config) {
		parent::__construct($subject, $config);
	}
	
	function onAfterInitialise() {
		
	$fn= $this->params->get('fix_fn');
	
		if ($fn == 0) {
		return null;
	
		} elseif ($fn == 1) {
		global $mainframe;
		$plugin =& JPluginHelper::getPlugin('system', 'sspngfix');
		$base_url = JURI::base();
		$newtag = '<script type="text/javascript" src="'.$base_url.'/plugins/system/pngfixjs/supersleight-min.js"></script>';
		$mainframe->addCustomHeadTag($newtag);
		} else {
		global $mainframe;
		$plugin =& JPluginHelper::getPlugin('system', 'sspngfix');
		$base_url = JURI::base();
		$newtag = '<script type="text/javascript" src="'.$base_url.'/plugins/system/pngfixjs/supersleight-min_bg.js"></script>';
		$mainframe->addCustomHeadTag($newtag);
		} 
	}
}
?>