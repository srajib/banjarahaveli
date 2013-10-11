<?php // no direct access
defined('_JEXEC') or die('Restricted access');  ?>
<ul class="lb_latestpop">
	<?php 
	/*echo "<pre>";
	print_r($list);
	echo "</pre>";
	*/
	foreach ($list as $item) :  ?>
	<li>
		<span style="color:#444;font-size:11px;"> <?php echo $item->posted; ?></span>
		<a href="<?php echo $item->link; ?>" class="lb_lpImg"><?php echo $item->mainImage; ?></a>
		<a href="<?php echo $item->link; ?>" title="<?php echo $item->text; ?>"><?php echo $item->text; ?></a>
		<!--<small><?php echo ($item->author) ? JText::_('POSTED BY').' '.$item->author.'<br>' : ''; ?><?php echo JText::_('POSTED IN'); ?> <a href="<?php echo $item->cat_url; ?>" class="smallLink"><?php echo $item->cat_title; ?></a></small>-->
	</li>
	<?php endforeach; ?>
</ul>