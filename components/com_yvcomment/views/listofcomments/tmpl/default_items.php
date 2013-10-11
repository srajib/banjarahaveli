<?php
/** This is recursively executed list of comments
 * @version		$Id: default_items.php 19 2010-05-25 15:05:48Z yvolk $
 * @package yvComment
 * @(c) 2007-2009 yvolk (Yuri Volkov), http://yurivolkov.com. All rights reserved.
 * @license GPL
 **/
defined('_JEXEC') or die('Restricted access'); // no direct access
global $mainframe;
$yvComment = &yvCommentHelper::getInstance($this->CommentTypeId);

$commentLevel = $this->commentLevel;
$items = $this->items;
$ShowNumberOfComments = false;
$ShowCommentsOnComment = $this->params->get('ShowCommentsOnComment');
$limitstart = 0;
$even = 0;
$from = 0;
$to = count($items);
$nCommentsTotal = $to;
$ascending = (boolean)($this->params->get('orderby_pri') == 'date');

$FilterByContext = $yvComment->getFilterByContext();

if ($commentLevel == 1) {
	$nCommentsTotal = $this->params->get('nCommentsTotal');
	$limitstart = $this->params->get('yvcomment_limitstart');
	$limit = $this->params->get('yvcomment_limit');
	if ($yvComment->DisplayTo() != 'module' || $limit==0) {
		$ShowNumberOfComments = true;
	}
}
if ($ShowNumberOfComments) { ?>
<div class='NumComments'><?php echo JText::_('COMMENTS') . ' (' . $nCommentsTotal . ')'; ?>
<?php
if ($yvComment->getFilterByContext() == 'article') {
	if ($yvComment->CommentsAreClosed($yvComment->getArticleID())){
		echo "<img alt='" . JText::_("COMMENTS_ARE_CLOSED") . "' src='" . $yvComment->getSiteURL()
		. "components/com_yvcomment/assets/checked_out.png'/>";
	}
} ?></div>
<?php } // ShowNumberOfComments

$className = "Comment";
if ($commentLevel == 1) {
	$className .= "s";
} elseif ($commentLevel == 2) {
	$className .= "Reply";
} else {
	$className .= "ReplyLevel" . $commentLevel ;
}
?>
<div class="<?php echo $className;?>"><?php 
if ($yvComment->isDebug()) echo "<span style='background-color: aqua'><- commentLevel = " . $commentLevel . " </span><br />";
if ($commentLevel == 2) {
	switch ($this->allow_comments_on_comment) {
		case 'administrators_reply_only' : ?>
<div class='OwnersReply_Heading'><?php echo JText::_('ADMINISTRATORS_REPLY_HEADING'); ?>
</div>
<div class='OwnersReply_Comments'><?php 
break;
case 'owners_reply_only' : ?>
<div class='OwnersReply_Heading'><?php echo JText::_('OWNERS_REPLY_HEADING'); ?>
</div>
<div class='OwnersReply_Comments'><?php 
	}
}
?>
<div class="CommentClr"></div>
<?php // For every comment
for ($i=$from; $i < $to; $i++) {
	$item =& $this->setParentComment($items[$i]);

	if ($ShowCommentsOnComment) {
		switch ($this->allow_comments_on_comment) {
			case 'threaded_comments' :
			case 'administrators_reply_only' :
			case 'owners_reply_only' :
			case 'one_level_deep' :
				if (!$this->LoadChildren()) {
					$ShowCommentsOnComment = false;
				}
				break;
		}
	}

	$ShowAvatar = isset($item->avatar);

	$ShowEditBtn = (boolean) ( !$this->print && $yvComment->EditEnabled($item));
	$ShowReplyButton = false;
	$ShowReplyList = false;
	if ($ShowCommentsOnComment) {
		switch ($this->allow_comments_on_comment) {
			case 'administrators_reply_only' :
			case 'owners_reply_only' :
			case 'one_level_deep' :
				if ($commentLevel > 1) break;
			case 'threaded_comments' :
				if (isset($item->children)) {
					$ShowReplyList = true;
				}
				if ( !$this->print
				&& ($yvComment->getFilterByContext() == 'article')
				&& ($item->state == 1)) {
					$ShowReplyButton = $yvComment->AddEnabled($item->id);
				}
				break;
		}
	}
	$ShowControlBox = $ShowEditBtn || $ShowAvatar || $ShowReplyButton;

	$className = 'Comment';
	if ($item->state != 1) {
		$className .= '_unpublished';
	}
	if ($even == 1) {
		$className .= '_even';
	}
	$even = 1 - $even;	?>
<div class='<?php echo $className;?>'>
<div>
<div>
<div class='CommentHeader'>
<div class='CommentTitle'><?php if ($ShowControlBox) { ?>
<div class='CommentControlBox'>
<table>
	<tr>
	<?php if ($ShowAvatar) {
		echo '<td>' . $item->avatar . '</td>';
	}
	?>
	<?php if ($ShowEditBtn) { ?>
		<td>
		<form
			action='<?php echo JRoute::_('index.php?option=com_yvcomment');?>'
			target="_top" method='post'><input type='hidden' name='Itemid'
			value='<?php echo $yvComment->getComponentItemid();?>' /> <input
			type='hidden' name='yvCommentID' value='<?php echo $item->id; ?>' />
		<input type='hidden' name='ArticleID'
			value='<?php echo $item->parentid; ?>' /> <input type='hidden'
			name='task' value='editdisplay' /> <input type='hidden' name='view'
			value='comment' /> 
			<input type='hidden' name='comment_type_id' value='<?php echo $this->CommentTypeId;?>' />
			<input type='hidden' name='url'
			value='<?php echo $this->escape($yvComment->buildReturnURL(true));?>' />
		<input type='image' name='editdisplay'
			title='<?php echo JText::_("EDIT_COMMENT_TIP"); ?>'
			src='<?php echo $yvComment->getSiteURL() ?>images/M_images/<?php echo ($item->state ? 'edit.png' : 'edit_unpublished.png') ?>' />
		</form>
		</td>
		<?php if (yvCommentHelper::UserCanEdit() == 'all') { ?>
		<td>
		<form
			action='<?php echo JRoute::_('index.php?option=com_yvcomment');?>'
			target="_top" method='post'><input type='hidden' name='Itemid'
			value='<?php echo $yvComment->getComponentItemid();?>' /> <input
			type='hidden' name='yvCommentID' value='<?php echo $item->id; ?>' />
		<input type='hidden' name='ArticleID'
			value='<?php echo $item->parentid; ?>' /> <input type='hidden'
			name='task' value='deletedisplay' /> <input type='hidden' name='view'
			value='comment' />
			<input type='hidden' name='comment_type_id' value='<?php echo $this->CommentTypeId;?>' />
			<input type='hidden' name='url'
			value='<?php echo $this->escape($yvComment->buildReturnURL(true));?>' />
		<input type='image' name='deletedisplay'
			title='<?php echo JText::_("DELETE_COMMENT_TIP"); ?>'
			src='<?php echo $yvComment->getSiteURL() ?>images/M_images/icon_error.gif' />
		</form>
		</td>
		<td>
		<form
			action='<?php echo JRoute::_('index.php?option=com_yvcomment');?>'
			target="_top" method='post'><input type='hidden' name='Itemid'
			value='<?php echo $yvComment->getComponentItemid();?>' /> <input
			type='hidden' name='yvCommentID' value='<?php echo $item->id; ?>' />
		<input type='hidden' name='ArticleID'
			value='<?php echo $item->parentid; ?>' /> <input type='hidden'
			name='task' value='publish' /> <input type='hidden' name='state'
			value='<?php echo ($item->state == 1 ? '0' : '1'); ?>' /> <input
			type='hidden' name='view' value='comment' /> 
			<input type='hidden' name='comment_type_id' value='<?php echo $this->CommentTypeId;?>' />
			<input type='hidden'
			name='url'
			value='<?php echo $this->escape($yvComment->buildReturnURL(true));?>' />
		<input type='image' name='publish'
			title='<?php echo JText::_($item->state == 1 ? 'Published' : 'Unpublished'); ?>'
			src='<?php echo $yvComment->getSiteURL() ?>administrator/images/publish_<?php echo ($item->state==1 ? 'g' : 'x') ?>.png' ; />
		</form>
		</td>
		<?php } // User can edit all ?>
		<?php } // ShowEditBtn ?>
		<?php	if ($ShowReplyButton) {	?>
		<td>
		<form
			action='<?php echo JRoute::_('index.php?option=com_yvcomment');?>'
			target="_top" method='post'><input type='hidden' name='Itemid'
			value='<?php echo $yvComment->getComponentItemid();?>' /> <input
			type='hidden' name='yvCommentID' value='0' /> <input type='hidden'
			name='ArticleID' value='<?php echo $item->id; ?>' /> <input
			type='hidden' name='task' value='adddisplay' /> <input type='hidden'
			name='view' value='comment' /> 
			<input type='hidden' name='comment_type_id' value='<?php echo $this->CommentTypeId;?>' />
			<input type='hidden' name='url'
			value='<?php echo $this->escape($yvComment->buildReturnURL(true));?>' />
		<button type='submit' class='button'><?php echo JText::_("REPLY_BUTTON"); ?>
		</button>
		</form>
		</td>
		<?php } // ShowReplyButton ?>
	</tr>
</table>
</div>
<?php } // ShowControlBox ?><?php
if ($yvComment->getConfigValue('hide_title', '0') == 0) {
	$text = $this->escape($item->title);
	$href = '';
	if ($this->params->get('comment_linkable') == 'comment_linkable_title') {
		$href = $yvComment->CommentIDToURL($item->id);
	}
	if ($href) {
		echo '<a href="' .  $href . '"'
		. ' class="CommentTitle' . $this->params->get('moduleclass_sfx') . '"'
		. ($mainframe->isAdmin() ? ' target="_blank"' : '')
		. '>' . $text . '</a>';
	} else {
		echo $text;
	}
}
?></div>
<div class='CommentDateAndAuthor'>
<div class='CommentDate'><?php 
if ($commentLevel == 1) { ?><span class='CommentNum'><?php
echo ($ascending ? ($i + 1 + $limitstart) : ($nCommentsTotal - $i - $limitstart) );
?></span><?php } // CommentNum - for first level only
echo JHTML::Date($item->created, $this->params->get('date_format')); ?>
</div>
<div class='CommentAuthor'><?php echo $yvComment->htmlAuthorName($this, $item); ?>
</div>
</div>
<div class="CommentClr"></div>
</div>
<div class='CommentFulltext'><?php echo $item->text;  
if (isset($item->readmore_link)) { ?> <a
	href="<?php echo $item->readmore_link; ?>"
	class="readon<?php echo $this->params->get('pageclass_sfx'); ?>"> <?php echo $item->readmore_text; ?></a>
<?php } ?></div>
<?php
if (!$ShowCommentsOnComment
&& $this->allow_comments_on_comment == 'threaded_comments') {
	$ShowChildrenCount = false;
	if ($this->get('ChildrenCount')) {
		$ShowChildrenCount = (boolean) ($item->ChildrenCount > 0);

		if ( !$this->print && ($item->ChildrenCount == 0)
		&& ($yvComment->getFilterByContext() == 'article')
		&& ($item->state == 1)) {
			if ($yvComment->AddEnabled($item->id)) {
				$ShowChildrenCount = true;
			}
		}
	}
	if ($ShowChildrenCount) {
		$link = $yvComment->ContentIDToURL($item->id);
		$text = '';
		if ($item->ChildrenCount > 0) {
			$text = JText::_('COMMENTS') . ' (' . $item->ChildrenCount . ')';
		} else {
			$text = JText::_('REPLY_LINK');
		}
		?>
<div class="CommentNumChildrenAlone"><a href='<?php echo $link;?>'><?php echo $text;?></a>
</div>
		<?php } // ShowChildrenCount
} // !$ShowCommentsOnComment ?> <?php if ( ($commentLevel == 1)
&& ($FilterByContext != 'article')
&& ($item->parentid > 0)) { ?>
<div class='CommentParentArticle'><?php
$ParentUrl = $yvComment->ContentIDToURL($item->parentid);
if ($ParentUrl) {
	echo '<a href="' . $ParentUrl . '" '
	. ($mainframe->isAdmin() ? ' target="_blank"' : '')
	. '>' . $this->escape($item->ArticleTitle) . '</a>';
} else {
	echo $this->escape($item->ArticleTitle);
}?> , <?php
if ($item->ArticleAuthorID != 0) {
	echo "<span class='CommentAuthorName'>"
	. $item->ArticleAuthorName
	. "</span>";
} else {
	echo "<span class='CommentAuthorAlias'>"
	. $item->ArticleAuthorAlias
	. "</span>";
}  ?></div>
<?php } ?>
<div class="CommentClr"></div>
</div>
</div>
</div>
<?php
if ($ShowReplyList) {
	// Call this template recursively to show next level of comments
	$this->items = &$item->children;
	$this->commentLevel = $commentLevel + 1;
	echo $this->loadTemplate('items');
}
if (isset($item->event)) {
	if (isset($item->event->afterDisplayContent)) {
		echo $item->event->afterDisplayContent;
	}
}?> <?php } // For every comment... ?><?php
if ($commentLevel == 2) {
	switch ($this->allow_comments_on_comment) {
		case 'administrators_reply_only' :
		case 'owners_reply_only' : ?></div>
		<?php }}?></div>