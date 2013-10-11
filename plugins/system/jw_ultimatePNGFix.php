<?php
/**
 * @version		3.0
 * @package		Ultimate PNG Fix [for IE v6 or lower]
 * @author    JoomlaWorks - http://www.joomlaworks.gr
 * @copyright	Copyright (c) 2006 - 2010 JoomlaWorks, a business unit of Nuevvo Webware Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );

class plgSystemJw_ultimatePNGFix extends JPlugin {

  // JoomlaWorks reference parameters
  var $plgName              = "jw_ultimatePNGFix";
  var $plgCopyrightsStart   = "\n\n<!-- JoomlaWorks \"Ultimate PNG Fix [for IE v6 or lower]\" Plugin (v3.0) starts here -->\n";
  var $plgCopyrightsEnd     = "\n<!-- JoomlaWorks \"Ultimate PNG Fix [for IE v6 or lower]\" Plugin (v3.0) ends here -->\n\n";

	function plgSystemJw_ultimatePNGFix( &$subject, $params ){
		parent::__construct( $subject, $params );
	}

	function onAfterInitialise(){

		// API
    $mainframe= &JFactory::getApplication();
		$document = &JFactory::getDocument();

		// Assign paths
    $sitePath = JPATH_SITE;
    $siteUrl  = substr(JURI::base(), 0, -1);

		// Admin check
		if($mainframe->isAdmin()) return;

    // Check if plugin is enabled
    if(JPluginHelper::isEnabled('system',$this->plgName)==false) return;

		// Load the plugin language file the proper way
		JPlugin::loadLanguage('plg_system_'.$this->plgName, JPATH_ADMINISTRATOR);



		// ----------------------------------- Get plugin parameters -----------------------------------
		$plugin =& JPluginHelper::getPlugin('system',$this->plgName);
		$pluginParams = new JParameter( $plugin->params );
		$pngFixScript	= $pluginParams->get('pngFixScript','unitpngfix');
		$DD_belatedPNG_CSSClass = $pluginParams->get('DD_belatedPNG_CSSClass','pngfix');



		// ----------------------------------- Render the head includes -----------------------------------
		$pathToJSFolders = JURI::base().'plugins/system/jw_ultimatePNGFix/'.$pngFixScript;
		
		$headIncludes = '
<!--[if lt IE 7]>
		';
		
		if($pngFixScript=='unitpngfix'){
			// Unit PNG Fix
			$headIncludes .= '<script type="text/javascript" src="'.$pathToJSFolders.'/unitpngfix.js"></script>';
			
		} elseif($pngFixScript=='supersleight') {
			// SuperSleight
			$headIncludes .= '<script type="text/javascript" src="'.$pathToJSFolders.'/supersleight-min.js"></script>';
		
		} elseif($pngFixScript=='DD_belatedPNG') {
			// DD_belatedPNG
			$headIncludes .= '
<script type="text/javascript" src="'.$pathToJSFolders.'/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">DD_belatedPNG.fix(\''.$DD_belatedPNG_CSSClass.'\');</script>
			';
		
		}
		
		$headIncludes .= '
<![endif]-->
		';
		
		
		
		// ----------------------------------- Render the output -----------------------------------
		// Load the head includes
		$document->addCustomTag($this->plgCopyrightsStart.$headIncludes.$this->plgCopyrightsEnd);



	} // END FUNCTION

} // END CLASS
