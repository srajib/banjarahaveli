<?php
/*------------------------------------------------------------------------
# SP Tab - Tab Module for Joomla by JoomShaper.com
# ------------------------------------------------------------------------
# author    JoomShaper http://www.joomshaper.com
# copyright Copyright (C) 2010 JoomShaper.com. All Rights Reserved.
# @license - Copyrighted Commercial Software
# Websites: http://www.joomshaper.com - http://www.joomxpert.com
# This file may not be redistributed in whole or significant part
-------------------------------------------------------------------------*/
header("Content-Type: text/css");
$uniqid = $_GET['id'];
?>
#sptab<?php echo $uniqid ?> ul.tabs_container {list-style:none;margin: 0!important; padding: 0!important}
#sptab<?php echo $uniqid ?> .tabs_buttons{background:#fff url(../images/style2/header_bg.gif) repeat-x 0 100%;padding:0 10px;overflow:hidden}
#sptab<?php echo $uniqid ?> ul.tabs_container li.tab{background:url(../images/style2/tab-l.png) no-repeat 0 100%;color:#666;float:left;padding:0 0 0 10px;margin:0;border:0!important;}
#sptab<?php echo $uniqid ?> ul.tabs_container li.tab span{background:url(../images/style2/tab-r.png) no-repeat 100% 100%;display:inline-block;cursor:pointer;padding:0 10px 0 0;margin:0 5px 0 0;font-weight:700;text-transform:uppercase}
#sptab<?php echo $uniqid ?> ul.tabs_container li.tab, #sptab<?php echo $uniqid ?> ul.tabs_container li.tab span{font-size:12px}
#sptab<?php echo $uniqid ?> .items_mask {position:relative;overflow:hidden}

#sptab<?php echo $uniqid ?> ul.tabs_container li.tab.active{background:url(../images/style2/tab-active-l.png) no-repeat 0 100%}
#sptab<?php echo $uniqid ?> ul.tabs_container li.tab.active span{background:url(../images/style2/tab-active-r.png) no-repeat 100% 100%}

#sptab<?php echo $uniqid ?>.sptab_red ul.tabs_container li.tab.tab_over,
#sptab<?php echo $uniqid ?>.sptab_red ul.tabs_container li.tab.active{color:#ba0202}

#sptab<?php echo $uniqid ?>.sptab_green ul.tabs_container li.tab.tab_over,
#sptab<?php echo $uniqid ?>.sptab_green ul.tabs_container li.tab.active{color:#91ba02}

#sptab<?php echo $uniqid ?>.sptab_blue ul.tabs_container li.tab.tab_over,
#sptab<?php echo $uniqid ?>.sptab_blue ul.tabs_container li.tab.active{color:#01b0e2}