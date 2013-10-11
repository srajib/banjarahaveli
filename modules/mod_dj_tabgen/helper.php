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

class modDjTabGenHelper
{
	function _getQuery($type, $id, $sort, $sortby, $limit)
	{
		global $mainframe;
		
		$user =& $mainframe->getUser();
		
		if($type==0)
		{
			switch($sortby)
			{
				case 'title': if($sort == 'ASC') 
								$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE sectionid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY title ASC LIMIT 0,$limit";
							  else
								$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE sectionid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY title DESC LIMIT 0,$limit";
							break;
				case 'publish': if($sort == 'ASC')
								$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE sectionid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY publish_up ASC LIMIT 0,$limit";
								else
								$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE sectionid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY publish_up DESC LIMIT 0,$limit";
							break;
				case 'create': if($sort == 'ASC')
								$query = "SELECT `title`, `introtext`, `fulltext`, `created` as `publish_up`, `id` FROM #__content WHERE sectionid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY created ASC LIMIT 0,$limit";
								else
								$query = "SELECT `title`, `introtext`, `fulltext`, `created` as `publish_up`, `id` FROM #__content WHERE sectionid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY created DESC LIMIT 0,$limit";
							break;
			}
		}else if($type==1)
		{
			switch($sortby)
			{
				case 'title': if($sort == 'ASC') 
									$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE catid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY title ASC LIMIT 0,$limit";
								  else
									$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE catid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY title DESC LIMIT 0,$limit";
								break;
				case 'publish': if($sort == 'ASC')
									$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE catid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY publish_up ASC LIMIT 0,$limit";
								else
								$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE catid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY publish_up DESC LIMIT 0,$limit";
							break;
				case 'create': if($sort == 'ASC')
								$query = "SELECT `title`, `introtext`, `fulltext`, `created` as `publish_up`, `id` FROM #__content WHERE catid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY created ASC LIMIT 0,$limit";
								else
								$query = "SELECT `title`, `introtext`, `fulltext`, `created` as `publish_up`, `id` FROM #__content WHERE catid='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) ORDER BY created DESC LIMIT 0,$limit";
							break;
			}	
		}
		else {
			$query = "SELECT `title`, `introtext`, `fulltext`, `publish_up`, `id` FROM #__content WHERE id='$id' AND state=1 AND access<=$user->aid AND publish_up<now() AND (publish_down>now() OR publish_down=0) LIMIT 1";
		}
		return $query;
	}
	
	function _getImage($string)
	{
		$img = '';
		preg_match("/<img [^>]*src=\"([^\"]*)\"[^>]*>/",$string,$matches);
		$img = $matches[1];
		return $img;
	}
	
	function _getClass($string)
	{
	  $class = '';
		preg_match("/<img [^>]*class=\"([^\"]*)\"[^>]*>/",$string,$matches);
		$class = $matches[1];
		return $class;
	}
	
	function _getAlt($string)
	{
	  $alt = '';
		preg_match("/<img [^>]*alt=\"([^\"]*)\"[^>]*>/",$string,$matches);
		$alt = $matches[1];
		return $alt;
	}
	
	function generateTransition(&$params)
	{
		global $mainframe;
		$transition = $params->get( 'transition' );
		$duration = $params->get( 'duration' );
		if($duration == '') $duration = 100;
		$type = $params->get( 'type' );
		$gid = $params->get('groupid');
		$gid = (($gid<10)? '0'.$gid : $gid);
		$suffix = $params->get('moduleclass_sfx');
		
		switch($transition)
		{
			case 'linear':
				$script = "window.addEvent('domready', function() {	
				myTabs$gid = new tabs('$gid',{suffix: '$suffix', transition: Fx.Transitions.$transition, duration: $duration});
				});
				";	
				break;
			case 'none':
				$script = "window.addEvent('domready', function() {	
				myTabs$gid = new tabs('$gid',{suffix: '$suffix', transition: 'none', duration: $duration});
				});
				";
				break;
			default:
				$script = "window.addEvent('domready', function() {	
				myTabs$gid = new tabs('$gid',{suffix: '$suffix', transition: Fx.Transitions.$transition.$type, duration: $duration});
				});
				";		
		}		
		return $script;
	}

	function getData(&$params)
	{	
		global $mainframe;
		$gid = $params->get('groupid');
		$suffix = $params->get('moduleclass_sfx');
		//--------------db
		$db =& JFactory::getDBO();
		//--------------takes group id from table
		
		//--------------- takes elements from table
		$query = "SELECT name, type, type_id, full_introtext, elements_c, char_c, open_c, show_image, show_date, image_width, image_float, position FROM #__tg_elements WHERE group_id='$gid' ORDER BY ordering";
		$db->setQuery($query);
		$dane = $db->loadAssocList();

		//prepare
		$document =& JFactory::getDocument();
	
		JHTML::_( 'behavior.mootools' );	
		$document->addScript(JURI::base().'components/com_dj_tabgen/js/tabs1.0.js');	
		
		if($params->get( 'cssactive' ) == 1)
		$document->addStyleSheet(JURI::base().'components/com_dj_tabgen/views/tabgen/tmpl/style.css');
		
		$active =0;

		$sort_direction = $params->get( 'sort_direction' );
		$sort_by = $params->get( 'sort_by' );
		
		for($i=0;$i<count($dane);$i++)
		{
			if($dane[$i][type]==3) continue;
				$query = modDjTabGenHelper::_getQuery($dane[$i][type],$dane[$i][type_id],$sort_direction, $sort_by, $dane[$i][elements_c]);
				$db->setQuery($query);
				$tmp = $db->loadAssocList();
					switch($dane[$i][image_float])
					{
						case 0: $dane[$i][image_float] = 'left';
							break;
						case 1: $dane[$i][image_float] = 'right';
							break;
						default: $dane[$i][image_float]	= 'none';						
					}
		
		
				for($j=0;$j<$dane[$i][elements_c];$j++)
				{
					if($tmp[$j][introtext] != '')
					{

						if($dane[$i][full_introtext]=='1'){
							$img='';
						}else{
							if($dane[$i][show_image] == '1')
							$img = modDjTabGenHelper::_getImage($tmp[$j][introtext]);
							$class = modDjTabGenHelper::_getClass($tmp[$j][introtext]);
							$alt = modDjTabGenHelper::_getAlt($tmp[$j][introtext]);
							$tmp[$j][introtext] = strip_tags($tmp[$j][introtext],'<a>');
							if($dane[$i][char_c]) {
								if(strlen($tmp[$j][introtext])>$dane[$i][char_c]){
									$tmp[$j][introtext] = substr($tmp[$j][introtext],0,$dane[$i][char_c]);
									$tmp[$j][introtext] .= '...';
									$tmp[$j]['introtext_cut'] = '1';	
								}else{
									$tmp[$j]['introtext_cut'] = '0';
								}									
							}
						}
						
						$fulltext='';
						if($tmp[$j][fulltext]){
							$fulltext='1';	
						}
						
							$articles[$i][$j] = Array(
								'title'=>$tmp[$j][title],
								'introtext'=>$tmp[$j][introtext],
								'fulltext'=>$fulltext,								
								'publish_up'=>$tmp[$j][publish_up],
								'id'=>$tmp[$j][id],
								'img'=>$img,
								'class'=>$class,
								'alt'=>$alt,
								'introtext_cut'=>$tmp[$j]['introtext_cut']
							);
					}
				}
		}


			for($ii=0;$ii<count($articles);$ii++){	
			
				$pattern_a = '/{loadposition [A-Za-z0-9_]*}/';
				preg_match_all($pattern_a, $articles[$ii][0][introtext], $matches);
				
		
				for($i=0;$i<count($matches[0]);$i++){

					if($matches[0][$i]){		
						$f = array('{loadposition ','}');
						$t = array('','');				
						$pos = str_replace($f,$t,$matches[0][$i]);	
						$modules_b = &JModuleHelper::getModules($pos);
						$mod='';
							if(count($modules_b)>0){
							//$mod .= '<div class="contact_form clearfix">';
							foreach (array_keys($modules_b) as $m){
								$mod .= JModuleHelper::renderModule($modules_b[$m]);
							}
							//$mod .= '</div>';		
					}
				$articles[$ii][0][introtext] = str_replace($matches[0][$i],$mod,$articles[$ii][0][introtext]);
				}
			}
		}
		
		
		$suffix = $params->get( 'moduleclass_sfx' );
		$transition = $params->get( 'transition' );
		$script = modDjTabGenHelper::generateTransition($params);
				
		$document->addScriptDeclaration($script);

		$result = Array
		(
			'tabs' => $dane,
			'articles' => $articles
		);
		return $result;
	}
}
?>