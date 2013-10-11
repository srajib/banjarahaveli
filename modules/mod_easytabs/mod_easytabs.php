<?php
/**
* @version		$Id: mode_easytabs.php 14258 2010-07-26 20:33:38 Dhaval Ramwani $
* @package		Joomla
* @copyright	Copyright (C) 2009 - 2010 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="Content-Style-Type" content="text/css">
        <meta http-equiv="Content-Script-Type" content="text/javascript">

        <title>Tabs - jQuery plugin for accessible, unobtrusive tabs</title>
<?php
 $baseUrl = JURI::base();
?>

        <script src="<?php echo $baseUrl;?>/modules/mod_easytabs/js/jquery-1.1.3.1.pack.js" type="text/javascript"></script>
        <script src="<?php echo $baseUrl;?>/modules/mod_easytabs/js/jquery.history_remote.pack.js" type="text/javascript"></script>
        <script src="<?php echo $baseUrl;?>/modules/mod_easytabs/js/jquery.tabs.pack.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function() {

                $('#container-3').tabs({ fxSlide: true });

            });
        </script>

        <link rel="stylesheet" href="<?php echo $baseUrl;?>/modules/mod_easytabs/js/jquery.tabs.css" type="text/css" media="print, projection, screen">
        <!-- Additional IE/Win specific style sheet (Conditional Comments) -->
        <!--[if lte IE 7]>
        <link rel="stylesheet" href="jquery.tabs-ie.css" type="text/css" media="projection, screen">
        <![endif]-->
        <style type="text/css" media="screen, projection">

            /* Not required for Tabs, just to make this demo look better... */

            body {
                font-size: 16px; /* @ EOMB */
            }
            * html body {
                font-size: 100%; /* @ IE */
            }
            body * {
                font-size: 87.5%;
                font-family: "Trebuchet MS", Trebuchet, Verdana, Helvetica, Arial, sans-serif;
            }
            body * * {
                font-size: 100%;
            }
            h1 {
                margin: 1em 0 1.5em;
                font-size: 18px;
            }
            h2 {
                margin: 2em 0 1.5em;
                font-size: 16px;
            }
            p {
                margin: 0;
            }
            pre, pre+p, p+p {
                margin: 1em 0 0;
            }
            code {
                font-family: "Courier New", Courier, monospace;
            }
        </style>
    </head>
    <body>
       
        <div id="container-3">
            <ul>
                <li><a href="#fragment-7"><span><?php
echo $tab1 = $params->get('tab1');?>
</span></a></li>


                <li><a href="#fragment-8"><span><?php
echo $tab2 = $params->get('tab2');?></span></a></li>

                <li><a href="#fragment-9"><span><?php
echo $tab3 = $params->get('tab3');?></span></a></li>

 <li><a href="#fragment-10"><span><?php
echo $tab4 = $params->get('tab4');?></span></a></li>
            </ul>
            <div id="fragment-7">
                <p>
                    <?php
echo $tab1_desc = $params->get('tab1_desc');
?>
                </p>

            </div>
            <div id="fragment-8">
                    <?php
echo $tab2_desc = $params->get('tab2_desc');
?>
            </div>
            <div id="fragment-9">
           <?php
echo $tab3_desc = $params->get('tab3_desc');
?>
            </div>
			
			 <div id="fragment-10">
           <?php
echo $tab4_desc = $params->get('tab4_desc');
?>
            </div>
        </div>

</body>
</html>