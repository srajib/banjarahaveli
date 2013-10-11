<?php
/**
 * yvComment module helper
 * @version		$Id: helpers.php 19 2010-05-25 15:05:48Z yvolk $
 * @package yvCommentModule
 * @(c) 2008 yvolk (Yuri Volkov), http://yurivolkov.com. All rights reserved.
 * @license GPL
 **/

// no direct access
defined('_JEXEC') or die('Restricted access');

class modyvcomment extends JObject {
	protected $CommentTypeId = 0;
	private $_Ok = true; // if false - error state: try to be quiet

	/**
	 * Constructor
	 *
	 * For php4 compatability we must not use the __constructor as a constructor for
	 * plugins because func_get_args ( void ) returns a copy of all passed arguments
	 * NOT references.  This causes problems with cross-referencing necessary for the
	 * observer design pattern.
	 */
	function modyvcomment($config) {
		parent :: __construct($config);
		//echo print_r('config:' . $config, true);
		global $mainframe;
		$_ExtensionName = 'yvCommentModule';
		// Main Release Level. Extensions for the same Release are compatible
		$_Release = '1.25';
		$Ok = false;

		// Initialize yvComment solution
		if (!class_exists('yvCommentHelper')) {
			$path = JPATH_SITE . DS . 'components' . DS . 'com_yvcomment' . DS . 'helpers.php';
			if (file_exists($path)) {
				require_once ($path);
			}
		}
		if (class_exists('yvCommentHelper')) {
			$Ok = yvCommentHelper::VersionChecks($_ExtensionName, $_Release);
		} else {
			// No yvComment Component
			$mainframe->enqueueMessage(
			$_ExtensionName . ' is installed, but "<b>yvComment Component</b>" is <b>not</b> installed. Please install it to use <a href="http://yurivolkov.com/Joomla/yvComment/index_en.html" target="_blank">yvComment solution</a>.<br/>' . '(yvComment Plugin version="' . yvCommentPluginVersion . '")',
		  	'error');
		}
		$this->_Ok = $Ok;
	}

	function Ok() {
		return $this->_Ok;
	}

	// Information that should be placed immediately after the generated content
	function ShowModule(& $module, & $params, $page = 0) {
		$this->CommentTypeId = intval($params->get('comment_type_id', 1));
		
		$yvComment = &yvCommentHelper::getInstance($this->CommentTypeId);
		global $option;
		$Ok = true;
		$strOut = '';
		$task = 'viewdisplay';

		//$strOut = 'ShowModule started;';

		$InstanceInd = $yvComment->BeginInstance('module', $params);
		$yvComment->setPageValue('module_title', $module->title);

		$viewName = $yvComment->getPageValue('view_name', 'listofcomments');
		$layoutName = $yvComment->getPageValue('layout_name', 'default');
		if ($layoutName == '0') {
			$layoutName = $yvComment->getPageValue('layout_name_custom', 'default');
		}
		JRequest::setVar('layout', $layoutName);

		// Pagination for module doesn't work... Joomla's "feature"...
		//   - e.g. Frontpage menu item causes injection of 'limit'... to the Request...
		$show_pagination = false;
		//$show_pagination = $yvComment->getPageValue('show_pagination', false);
		if (!$show_pagination) {
			// Next line doesn't work, because it doesn't really set parameter to 'false':
			//   $yvComment->setPageValue('show_pagination', false);
			// And this works:
			$yvComment->setPageValue('show_pagination', '0');
			// echo 'show_pagination=' . $yvComment->getPageValue('show_pagination', '???') . ';';
			$limit = intval($yvComment->getPageValue('count', 0));
			if ($limit > 0) {
				$yvComment->setPageValue('yvcomment_limit', $limit);
			}
		}

		if ($Ok) {
			$config = array ();
			$config['task'] = $task;
			$config['view'] = $viewName;
			$config['comment_type_id'] = $this->CommentTypeId;
			
			// This is needed only because we can't 'undefine' this:
			//define( 'JPATH_COMPONENT',					JPATH_BASE.DS.'components'.DS.$name);
			$config['base_path'] = JPATH_SITE_YVCOMMENT;

			// Create the controller
			$controller = new yvcommentController($config);

			// Perform the Request task
			$controller->execute($task);

			$strOut .= $controller->getOutput();
			if ($params->get('module_title_is_dynamic', true)) {
				$module->title = $yvComment->getPageValue('module_title', $module->title);
			}

		}

		$yvComment->EndInstance($InstanceInd);
		return $strOut;
	}
}
?>