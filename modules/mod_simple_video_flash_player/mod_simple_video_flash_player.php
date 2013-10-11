<?php
/**
* Joomla
* Author : www.time2online.de
* Email: info@time2online.de
* Module: Simple Video Flash Player Module
* Version: 1.6.5
* 
* JW Player
* Author : Jeroen Wijering
* ULR: http://www.longtailvideo.com/players/jw-flv-player/
* Version: 5.6
*
* # Simple Video Flash Player Module #
* For download and demo and documentation use http://www.time2online.de.
*
* # JW Player License #
* Below you see a simple embedded example of the JW Player!
* Licensing: The player is licensed under a http://creativecommons.org/licenses/by-nc-sa/2.0/ Creative Commons License. It allows you to use, modify and redistribute the script, but only for noncommercial purposes.
*	
* For corporate use, http://www.longtailvideo.com/players/order Order commercial licenses please apply for a commercial license.
**/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

/** Embed parameters **/
//player path 
$flashplayer = 'modules/mod_simple_video_flash_player/jwplayer.swf';
$jwplayerjs = 'modules/mod_simple_video_flash_player/jwplayer.js';													

// height 
$height =$params->get('height', '');

// width
$width = $params->get('width', '');

// controlbar
if ($params->get('controlbar')){
	$controlbar = $params->get('controlbar', '');
}													
					
// count random
$random = mt_rand();

// backcolor 
if ($params->get('backcolor')){
	$backcolor = $params->get( 'backcolor');
}

// frontcolor neu
if ($params->get('frontcolor')){
	$frontcolor = $params->get( 'frontcolor');
} 

// lightcolor neu
if ($params->get('lightcolor')){
	$lightcolor = $params->get( 'lightcolor');
}

// screencolor color neu
if ($params->get('screencolor')){
	$screencolor = $params->get( 'screencolor');
} 


/** File properties **/
// file	
$file = $params->get( 'file');

// preview image
if ($params->get('image')){
	$image = $params->get('image', '');
}

// fallback image
if ($params->get('fallbackimage')){
	$fallbackimage = $params->get('fallbackimage', '');
	$fallback = '<img src="'.$fallbackimage.'" alt="" />';
	}
	else {
	$fallback = '<p><a href="http://www.macromedia.com/go/getflashplayer">Get the Flash Player</a> to see this player.</p>';
}

// linktarget
if ($params->get('linktarget')){
	$linktarget = $params->get('linktarget', '');
}


/** Layout **/
// playlistfile
if ($params->get('playlistfile')){
	$playlistfile = $params->get('playlistfile', '');
}

// playlistsize
if ($params->get('playlistsize')){
	$playlistsize = $params->get('playlistsize', '');
}	

// playlist
if ($params->get('playlist')){
	$playlist = $params->get('playlist', '');
}

// skin
if ($params->get('skin')){
	$skin = $params->get('skin', '');
}


/** Behaviour  **/
// autostart
if ($params->get('autostart')){
   $autostart = 'true';
}

// repeat
if ($params->get('repeat')){
	$repeat = $params->get('repeat', '');
}

// shuffle
if ($params->get('shuffle')){
	$shuffle = 'true';
}

// stretching neu
if ($params->get('stretching')){
	$stretching = $params->get('stretching', '');
}														


/** External Communication  **/
// plugins
if ($params->get('plugins')){
	$plugins = $params->get('plugins', '');
}
// streamer neu
if ($params->get('streamer')){
	$streamer = $params->get('streamer', '');
}	
	
?>

<script type="text/javascript" src="<?php echo JURI::base();;?><?php echo $jwplayerjs ?>"></script>
<div id='mediaspace<?php echo $random ?>'><?php echo $fallback ?></div>
<script type='text/javascript'>
jwplayer('mediaspace<?php echo $random ?>').setup({
	'flashplayer': '<?php echo JURI::base();;?><?php echo $flashplayer ?>',
	<?php if ($params->get('playlistfile')){?>
		'playlistfile': '<?php echo $playlistfile ?>',
		'playlistsize': '<?php echo $playlistsize ?>',
		'playlist': '<?php echo $playlist ?>',
	<?php } else { ?>
		'file': '<?php echo $file ?>',
	<?php } ?>	
	<?php if ($params->get('image')){?>'image': '<?php echo $image ?>',<?php }?>
	<?php if ($params->get('backcolor')){?>'backcolor': '<?php echo $backcolor ?>',<?php }?>
	<?php if ($params->get('frontcolor')){?>'frontcolor': '<?php echo $frontcolor ?>',<?php }?>
	<?php if ($params->get('lightcolor')){?>'lightcolor': '<?php echo $lightcolor ?>',<?php }?>
	<?php if ($params->get('screencolor')){?>'screencolor': '<?php echo $screencolor ?>',<?php }?>	
	<?php if ($params->get('skin')){?>'skin': '<?php echo $skin ?>',<?php }?>
	<?php if ($params->get('linktarget')){?>/*'linktarget': '<?php echo $linktarget ?>',*/<?php }?>
	<?php if ($params->get('plugins')){?>'plugins': '<?php echo $plugins ?>',<?php }?>
	<?php if ($params->get('streamer')){?>'streamer': '<?php echo $streamer ?>',<?php }?>
	<?php if ($params->get('autostart')){?>'autostart': '<?php echo $autostart ?>',<?php }?>
	<?php if ($params->get('repeat')){?>'repeat': '<?php echo $repeat ?>',<?php }?>
	<?php if ($params->get('shuffle')){?>'shuffle': '<?php echo $shuffle ?>',<?php }?>
	<?php if ($params->get('stretching')){?>'stretching': '<?php echo $stretching ?>',<?php }?>	
	'controlbar': '<?php echo $controlbar ?>',
	'width': '<?php echo $width ?>',
	'height': '<?php echo $height ?>'
});
</script>

<div style="display:none;">time2online Joomla Extensions: <a href="http://www.time2online.de">Simple Video Flash Player Module</a></div>