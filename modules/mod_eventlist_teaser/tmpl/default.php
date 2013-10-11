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
 
defined('_JEXEC') or die('Restricted access');
// check if any results returned
$items = count($list);
if (!$items) {
   echo '<p class="eventlistmod' . $params->get('moduleclass_sfx') . '">' . JText::_('NOEVENTS') . '</p>';
   return;
}
?>
<div id="eventlistteaser">
  <?php if ($params->get('layout') == 1) : ?>
  
  
<!-- LAYOUT 1 -->  

  <?php foreach ($list as $item) :  ?> 
  <!-- if there is any event content, show the event, else do nothing -->
  <?php if ($item->eventdescription) :  ?> 
  <div class="event_item">
  	<div class="event_item_left">
  		<div class="calendar">
			<!--<div class="year"></div>-->
			<div class="month">
			  <?php echo $item->month; ?>
			</div>
			<!--<div class="day">
			  <?php //echo $item->dayname; ?>
			</div>-->
			<div class="daynum">
			  <?php echo $item->daynum; ?>
			</div> 
		</div> 
	</div>
	<div class="event_item_right">  
		<h2 class="event-title">
		<?php if ($item->eventlink) : ?>
		<a href="<?php echo $item->eventlink; ?>" title="
		  <?php echo $item->title; ?> ">
		  <?php endif; ?>
		  <?php echo $item->title; ?>
		  <?php if ($item->eventlink) : ?></a>
		<?php endif; ?></h2> 
		<span class="event_date">
			<?php 
				echo $item->dayname.', '.$item->daynum.' '.$item->month.' '.$item->year;
			?>
		</span>
	  	  
	  <div class="teaser">
		<p>
		  <?php if(($item->eventimage)!=str_replace("jpg","",($item->eventimage)) OR ($item->eventimage)!=str_replace("gif","",($item->eventimage)) OR ($item->eventimage)!=str_replace("png","",($item->eventimage))) : ?>
		  <a href="<?php echo $item->eventimageorig; ?>" class="modal" title="<?php echo $item->title; ?> ">
			<img class="float_right image-preview" src="<?php echo $item->eventimage; ?>" alt="<?php echo $item->title; ?>" /></a>
		  <?php else : ?>
		  <?php if(($item->venueimage)!=str_replace("jpg","",($item->venueimage)) OR ($item->venueimage)!=str_replace("gif","",($item->venueimage)) OR ($item->venueimage)!=str_replace("png","",($item->venueimage))) : ?>
		  <a href="<?php echo $item->venueimageorig; ?>" class="modal" title="<?php echo $item->venue; ?> ">
			<img src="<?php echo $item->venueimage; ?>" alt="<?php echo $item->venue; ?>" class="float_right image-preview" />
		  </a>
		  <?php endif; ?>
		  <?php endif; ?>
		  <?php echo $item->eventdescription; ?>
		</p>	  	
	  </div>
	  <div class="clear"></div> 
	  <!-- additional information list -->
	  <?php if ($params->get('ainfo') == 1) { ?>
	  <ul>
		<!-- Time -->
		<?php if (!empty ($item->time)) : ?>
		<li>
		<?php echo JText::_('AINFOTIME').' '.$item->time; ?></li>
		<?php endif; ?> 
		<!-- Venue -->
		<?php if ($item->venue) : ?>
		<li>
		<?php echo JText::_('AINFOVENUE').' ';?>
		<a href="<?php echo $item->venuelink; ?>" title="<?php echo $item->venue; ?>"><?php echo $item->venue; ?></a>
		- 
		<?php echo $item->city; ?></li>
		<?php endif; ?> 
		<!-- Category -->
		<li>
		<?php echo JText::_('AINFOCAT').' ';?>
		<a href="<?php echo $item->categorylink; ?>" title="<?php echo $item->catname; ?>"><?php echo $item->catname; ?></a>
		</li>
	  </ul>
	  <?php } ?>
	  
	   <!-- social bookmarks -->
		<span class="share">
	<?php 
	$url = JURI::base();
	$pars = parse_url($url);
	$base = $pars[host];
	?>
		  
		  <!--Facebook TODO: rel="nofollow" for fb modal -->
		  <?php if ($params->get('linkfb') == 1) { ?>
		  <a href="http://www.facebook.com/sharer.php?u=<?php echo $base.$item-> eventlink; ?>&t=<?php echo $item->title; ?> " title="Share on Facebook" class="modal" rel="{handler: 'iframe', size: {x: 750, y: 450}}">
			<img class="" src="<?php echo JURI::base();?>modules/mod_eventlist_teaser/tmpl/img/facebook.png" height="12" width="12" alt="Facebook" /></a>
		  <?php 
		  }
		  ?> 
		  
		  <!-- Twitter -->
		  <?php if ($params->get('linktw') == 1) { ?>
		  <a rel="nofollow" target="_blank" href="http://www.twitter.com/home?status=<?php echo urlencode($item-> title); ?>+<?php echo $base.$item->eventlink; ?> ">
			<img src="<?php echo JURI::base();?>modules/mod_eventlist_teaser/tmpl/img/twitter.png" height="14" width="11" alt="Twitter" /></a>
		  <?php 
		  }
		  ?>     
		  
		  <!-- Digg -->
		  <?php if ($params->get('linkdi') == 1) { ?>      
		  <a class="DiggThisButton" href="http://digg.com/submit?url=<?php echo $base.$item->eventlink; ?>&amp;title=<?php echo urlencode($item->title); ?> " rel="external" rev="('news'|'image'|'video'), [topic]">
			<img src="<?php echo JURI::base();?>modules/mod_eventlist_teaser/tmpl/img/digg.png" height="11" width="24" alt="DiggThis" /></a>
		  <?php 
		  }
		  ?>  
		  
		</span>    
	  </div>
	 </div>
	  <?php endif; ?>
	  <?php endforeach; ?>  
	  <?php endif ; ?>
	  <!-- Folgender Backlink darf nicht entfernt werden -->	
</div>
