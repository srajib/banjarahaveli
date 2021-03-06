<?php
/**
* @version		1.5.1
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

jimport('joomla.application.component.helper');
if(!JComponentHelper::isEnabled('com_dj_tabgen', true))
{
	JError::raiseError('DJ Tabs Generator ERROR', JText::_('MODULENEEDSCOMPONENT'));
}
require_once (dirname(__FILE__).DS.'helper.php');

$data = modDjTabGenHelper::getData($params);

require(JModuleHelper::getLayoutPath('mod_dj_tabgen'));

?>