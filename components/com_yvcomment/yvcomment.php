<?php
/**
 * yvComment - A User Comments Component, developed for Joomla 1.5
 * @version		$Id: yvcomment.php 19 2010-05-25 15:05:48Z yvolk $
 * @package yvComment
 * @(c) 2007-2010 yvolk (Yuri Volkov), http://yurivolkov.com. All rights reserved.
 * @license GPL
 **/

// no direct access
defined('_JEXEC') or die('Restricted access (site_yvcomment)');

global $mainframe;
$Ok = false;
$CommentTypeId = intval(JRequest::getVar('comment_type_id', 1));

// Initialize yvComment solution
if (!class_exists('yvCommentHelper')) {
	$path = JPATH_SITE . DS . 'components' . DS . 'com_yvcomment' . DS . 'helpers.php';
	if (file_exists($path)) {
		require_once ($path);
	}
}
if (class_exists('yvCommentHelper')) {
	$yvComment = &yvCommentHelper::getInstance($CommentTypeId);
	$Ok = yvCommentHelper::VersionChecks();
}

if (!$Ok) {
	$mainframe->enqueueMessage(
		'<strong>Error!</strong> yvComment component was not installed properly.' 
		. ' Please see the <a href="http://yurivolkov.com/Joomla/yvComment/index_en.html"'
		. ' target="_blank">yvComment\'s Homepage</a>.',
		'error');
}
if ($Ok) {
	$parms = null;
	$InstanceInd = $yvComment->BeginInstance('component', $parms);

	$layoutName = $yvComment->getPageValue('layout_name', 'default');
	if ($layoutName == '0') {
		$layoutName = $yvComment->getPageValue('layout_name_custom', 'default');
	}
	JRequest::setVar('layout', $layoutName);

	$config = array ();
	$config['comment_type_id'] = $CommentTypeId;
	// Create the controller
	$controller = new yvcommentController($config);

	// Perform the Request task
	$controller->execute(JRequest::getVar('task'));

	// Redirect if set by the controller
	$controller->redirect();

	$yvComment->EndInstance($InstanceInd);
}
?>