<?php
/** This is base (most "heavy") layout for different variants of
 * "lists of comments", including "Latest comments"...
 * This layout is used by plugin to show list of comments.
 * This layout uses other template:
 * 	default_items.php - for the list of comments
 * @version		$Id: default.php 19 2010-05-25 15:05:48Z yvolk $
 * @package yvComment
 * @(c) 2007-2009 yvolk (Yuri Volkov), http://yurivolkov.com. All rights reserved.
 * @license GPL
 **/
defined('_JEXEC') or die('Restricted access'); // no direct access
global $mainframe;
$yvComment = &yvCommentHelper::getInstance($this->CommentTypeId);

if ($yvComment->isDebug()) {
	echo '<p>template=listofcomments,  parentview='
	. $yvComment->ParentView()
	. ', parentoption=' . $yvComment->ParentOption()
	. ', moduleclass_sfx=' . $this->params->get( 'moduleclass_sfx' )
	. ', DisplayTo=' . $yvComment->DisplayTo() . '</p>';
}

// Here you may customize dynamic title of the module
if ($this->params->get('module_title_is_dynamic', true)) {
	$module_title = $this->params->get('module_title', '');
	$ObjectName = $yvComment->getContextObjectName();
	$msgcode = '';
	switch ($yvComment->getFilterByContext()) {
		case 'article':
			$msgcode = 'MODULE_TITLE_CONTEXT_ARTICLE';
			break;
		case 'category':
			$msgcode = 'MODULE_TITLE_CONTEXT_CATEGORY';
			break;
		case 'section':
			$msgcode = 'MODULE_TITLE_CONTEXT_SECTION';
			break;
		case 'all':
			$msgcode = 'MODULE_TITLE_CONTEXT_ALL';
			break;
	}
	$module_title .= str_replace(
	array('%1'),
	array($ObjectName),
	JText::_($msgcode)
	);
	$this->params->set('module_title', $module_title);
}
?>
<?php if (!$yvComment->IsNested()) : ?>
<div class="yvComment<?php echo $this->params->get( 'moduleclass_sfx' ); ?>"
<?php if ($yvComment->DisplayTo() != 'module' && $this->params->get('ShowComments')) echo ' id="yvComment"'; ?>>
	<?php endif; ?> <?php if (count($this->message)>0) : ?>
<div class="CommentMessage"><?php
//echo $this->message . ' --- <br>';
foreach ($this->message as $message) {
	echo $message . '<br/>';
}
?></div>
<?php endif; ?>
<?php if ($this->params->get('ShowComments')) {
	// This is the list of comments
	//$this->commentLevel = 1;
	echo $this->loadTemplate('items');
} ?> 
<?php if ($this->params->get('ShowControlForm')) : ?>
<div class="CommentControlForm">
<form action="<?php JURI::current(); ?>" method="post" name="adminForm">
	<input type='hidden' name='comment_type_id' value='<?php echo $this->CommentTypeId;?>' />

<?php
if ($this->params->get('ShowFilters')) {
	$lists['state'] = JHTML::_('grid.state', $this->params->get('filter_state'), 'Published', 'Unpublished', 'Archived');
	echo $lists['state'];
}

/* TODO some other filters...
 ...from administrator/components/com_content/admin.content.html.php
 */
?> <?php
if ($this->params->get('yvcomment_show_pagination')) {
	if ($this->pagination) {
		echo $this->pagination->getListFooter();
	}
}
?></form>
</div>
<?php endif; // ShowControlForm ?> <?php if ($yvComment->getShowLogo(true)) : ?>
<div class='CommentPoweredBy'><a
	href="http://yurivolkov.com/Joomla/yvComment/index_en.html"
	target="_blank" rel="nofollow">yvComment v.<?php echo $yvComment->getShortVersion();?></a></div>
<?php endif; ?> <?php if (!$yvComment->IsNested()) : ?>
<div class="CommentClr"></div>
</div>
<?php endif; ?>
