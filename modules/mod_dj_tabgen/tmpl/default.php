<?php 
/**
* @version		1.5.3
* @package		DJ Tab Generator
* @subpackage	DJ Tab Generator Module
* @copyright	Copyright (C) 2010 Blue Constant Media LTD, All rights reserved.
* @license		http://www.gnu.org/licenses GNU/GPL
* @autor url    http://design-joomla.eu
* @autor email  contact@design-joomla.eu
* @Developer    Lukasz Ciastek - lukasz.ciastek@design-joomla.eu
* 				Szymon Woronowski - szymon.woronowski@design-joomla.eu
* 
* 
*DJ Tab Generator is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* DJ Tab Generator is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with DJ Tab Generator. If not, see <http://www.gnu.org/licenses/>.
* 
*/
// no direct access
defined('_JEXEC') or die('Restricted access');

//jimport('joomla.user.user');
	$gid = $params->get('groupid',0);
	$gid = (($gid<10)? '0'.$gid : $gid);
	$dane = $data['tabs'];
	$articles = $data['articles'];
	$active = 0;
?>	
	
<div id="Tab<?php echo $gid; ?>" class="dj_tabgen">
	<div class="tab_ul" style="width:100%;">
	<ul class="title">
		<?php
		for($i=0;$i<count($dane);$i++){
			if($i == $active){ ?>			
				<li id="click<?php echo $gid.(($i<10)? '0'.$i : $i); ?>" class="title active"><a><?php echo $dane[$i][name]; ?></a></li>
			<?php } else { ?>			
				<li id="click<?php echo $gid.(($i<10)? '0'.$i : $i); ?>" class="title"><a><?php echo $dane[$i][name]; ?></a></li>
			<?php
			}
		}
		?>
	</ul>
	</div>
	<?php
	for($i=0;$i<count($dane);$i++){
		if($i == $active){
		?>			
			<div id="container<?php echo $gid.(($i<10)? '0'.$i : $i); ?>" class="panel active">
		<?php
		} else { ?>			
			<div id="container<?php echo $gid.(($i<10)? '0'.$i : $i); ?>" class="panel">		
		<?php
		}
		
		
		if($dane[$i]['type']==0||$dane[$i]['type']==1){
		// ----------------- CATEGORY ANG SECTION LAYOUT ---------------------------------------
		
		  for($j=0;$j<$dane[$i]['elements_c'];$j++){
			if($articles[$i][$j]['publish_up'] != ''){ ?>
				<div id="button<?php echo $gid.(($i<10)? '0'.$i : $i).(($j<10)? '0'.$j : $j); ?>" class="moretitle">
					<div class="lefttitle">
						<span>
							<?php 
							if($dane[$i]['show_date']=='1'){ ?>
								<strong class="date"><?php echo JHTML::_('date', $articles[$i][$j]['publish_up'], JText::_('DATE_FORMAT_LC4')); ?></strong>
							<?php }
							?>
							<strong><?php echo $articles[$i][$j]['title'];?></strong>
						</span>
					</div>
				<?php
				if($j<$dane[$i][open_c]){
				?>
					<div id="rpicture<?php echo $gid.(($i<10)? '0'.$i : $i).(($j<10)? '0'.$j : $j); ?>" class="arrow arrowactive">
					<?php
				} else {
					?>
					<div id="rpicture<?php echo $gid.(($i<10)? '0'.$i : $i).(($j<10)? '0'.$j : $j); ?>" class="arrow">
				<?php
				}
				?>
					</div>
				</div>
				<?php
				if($j<$dane[$i][open_c]){ ?>
					<div id="more<?php echo $gid.(($i<10)? '0'.$i : $i).(($j<10)? '0'.$j : $j); ?>" class="more moreactive" title=""><p> 
					<?php
					if($articles[$i][$j]['img']!=''){ ?>
					  <img src="<?php echo $articles[$i][$j]['img']; ?>" id="img<?php echo $gid.(($i<10)? '0'.$i : $i).(($j<10)? '0'.$j : $j); ?>" class="<?php echo $articles[$i][$j]['class']; ?>" alt="<?php if ($alt = $articles[$i][$j]['alt']) echo $alt; else echo('Article Thumbnail'); ?>" style="width: <?php echo $dane[$i][image_width];?>; float: <?php echo $dane[$i][image_float]; ?>;" />
					<?php
					}
					echo $articles[$i][$j]['introtext'];
				} else { ?>
					<div id="more<?php echo $gid.(($i<10)? '0'.$i : $i).(($j<10)? '0'.$j : $j); ?>" class="more"><p>
					<?php
					if($articles[$i][$j]['img']!=''){ ?>
						<img src="<?php echo $articles[$i][$j]['img']; ?>" id="img<?php echo $gid.(($i<10)? '0'.$i : $i).(($j<10)? '0'.$j : $j); ?>" class="<?php echo $articles[$i][$j]['class']; ?>" alt="<?php if ($alt = $articles[$i][$j]['alt']) echo $alt; else echo('Article Thumbnail'); ?>" style="width: <?php echo $dane[$i][image_width];?>; float: <?php echo $dane[$i][image_float]; ?>;" />
					<?php
					}
					echo $articles[$i][$j]['introtext'];
				} ?>
				</p>
				<?php
				$link = "index.php?option=com_content&view=article&id=".$articles[$i][$j]['id']."&Itemid=".$mainframe->getItemid($articles[$i][$j][id]);

					if($articles[$i][$j]['fulltext'] || $articles[$i][$j]['introtext_cut'] ){
					?>
						<a href="<?php echo JRoute::_($link); ?>" class="link"><?php echo JText::_('READMORE'); ?></a>		
					<?php }	?>
				</div>
			<?php
			}
		  }
		
		} else if($dane[$i]['type']==2){
		// -------------- ARTICLE LAYOUT ------------------------------------------	 ?>
		
			<div class="djtab-article">
				<?php 	
					if($dane[$i]['show_date']=='1'){ ?>					
					<div class="createdate"><?php echo JHTML::_('date', $articles[$i][0]['publish_up'], JText::_('DATE_FORMAT_LC4')); ?></div>						
				<?php }
				?>
				<div class="contentheading"><?php echo $articles[$i][0]['title'];?></div>
				<p>
				<?php if($articles[$i][0]['img']!=''){ ?>
					  <img src="<?php echo $articles[$i][0]['img']; ?>" class="<?php echo $articles[$i][0]['class']; ?>" alt="<?php if ($alt = $articles[$i][0]['alt']) echo $alt; else echo('Article Thumbnail'); ?>" style="width: <?php echo $dane[$i][image_width];?>; float: <?php echo $dane[$i][image_float]; ?>; margin: 5px;" />
				<?php }
				echo $articles[$i][0]['introtext']; ?>
				</p>
				<?php $link = "index.php?option=com_content&view=article&id=".$articles[$i][0]['id']."&Itemid=".$mainframe->getItemid($articles[$i][0][id]); 
				
				if($articles[$i][0]['fulltext'] || $articles[$i][0]['introtext_cut'] ){?>
					<a href="<?php echo JRoute::_($link); ?>" class="link"><?php echo JText::_('READMORE'); ?></a>		
				<?php }	?>
			</div>
		<?php	
		} else if($dane[$i]['type']==3){
		// -------------- MODULES LAYOUT ------------------------------------------	
		
			$mparams = array('style'=>-2);
			$document = &JFactory::getDocument();
			$renderer = $document->loadRenderer('module');
			?>
			<div class="djtab-modules">
			<?php foreach (JModuleHelper::getModules($dane[$i]['position']) as $mod) { ?>
				<div class="djtab-module">
					<?php echo $renderer->render($mod, $mparams); ?>
				</div>
			<?php } ?>
			</div>
		<?php } ?>
		</div>
	<?php
	}
	?>
	<div id="module_tabs_bot"><!--content_bot--></div>	
	</div>