<?php
/**
* @version		$Id: disable_mootools.php 003 2010-02-07 14:09:52Z RedCat $
* @package		Joomla Extensions
* @copyright	Copyright (C) 2009 - 2010 SiteFactory.SU. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );

/**
 * Joomla! Enable/Disable loading mootools javascript Plugin
 *
 * @package		Joomla Extensions
 * @subpackage	System
 */
 
class  plgSystemDisable_MooTools extends JPlugin {

	/**
	 * Constructor
	 *
	 * @access	protected
	 * @param	object	$subject The object to observe
	 * @param 	array   $config  An array that holds the plugin configuration
	 * @since	1.5
	 */
	function plgSystemDisable_MooTools(& $subject, $config) {
		parent::__construct($subject, $config);
	}
	
	/**
	 * Main function
	 */
	function onAfterDispatch() {
		global $mainframe;
		
		//	if format is no 'html' we must disable plugin
		//	@since in v.1.0.2
		$format = JRequest::getVar('format');
		if ($format == 'raw') {
			return;
		}
		//	for admin we must to load MooTools anyway...
		if (!$mainframe->isAdmin()) {
			//	params support
			//	@since in v.1.0.1
			$on = $this->params->get('enabled', 0);
			if ($on) {
				$doc = JFactory::getDocument();
				//	looking for scripts
				$headerstuff = $doc->getHeadData();
				$scripts = $headerstuff['scripts'];
				//	cleare the original scripts
				$headerstuff['scripts'] = array();
				//	deleting mootols...
				foreach($scripts as $url=>$type) {
					if (strpos($url, 'js/mootools.js') === false && strpos($url, 'js/caption.js') === false) {
						$headerstuff['scripts'][$url] = $type;
					}
				}
				//	set the new head data
				$doc->setHeadData($headerstuff);
			}
		}
	}	//	end of function onAfterInitialise

}	//	end of class plgSystemDisable_MooTools