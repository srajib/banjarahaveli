<?php
/**
* Simple Lightbox Image Module for Joomla 1.5
* Joomla Module
* Author: Jay Tucker
* Website: www.jaytucker.com
* Contact: contact@jaytucker.com
* Copyright (C) 2010 Jay Tucker. All rights reserved.
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
* Business Hours Module is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
$db		=& JFactory::getDBO();

$document = &JFactory::getDocument();
$stylesheet =  JURI::root(true) . '/modules/mod_jtshadowbox/shadowbox/shadowbox.css';
$document->addStyleSheet($stylesheet,'text/css',"screen");
$javascript = JURI::root(true) . '/modules/mod_jtshadowbox/shadowbox/shadowbox.js';
$document->addScript($javascript);
//$document->addCustomTag( "<script type=\"text/javascript\">var JTshadowbox = { url: '/modules/mod_jtshadowbox/shadowbox/' };</script>" );

if($params->get('directory') == "images" && $params->get('directoryimages') != -1)
{
	$imagesDirectory = $params->get('directoryimages');
}
elseif($params->get('directory') == "stories" && $params->get('directorystories') != -1)
{
	$imagesDirectory = 'stories/' . $params->get('directorystories');
}
else
{
$imagesDirectory = null;
}
$imgDir = './images/' . $imagesDirectory;
$fullPath = JURI::root(true) . '/images/' . $imagesDirectory;
$thumbSuffix = $params->get('thumbsuffix');
$useFullAsThumb = $params->get('usefullasthumb', 1);
$resizeImages = $params->get('resizeimages', 2);
$thumbWidth = $params->get('resizewidth', '100');
$layout = 'jt' . $params->get('layout', 'vertical');
$align = 'jt' . $params->get('imagealign', 'center');
$unique = uniqid('jt_');
$messageLocation = $params->get('messagelocation', 0);
$message = $params->get('message');
$title = $params->get('title');
$imageTitle = $params->get('imagetitle', 0);
$slideShow = $params->get('slideshowmode', 1);
$showOverlay = $params->get('showoverlay', 1);

# Shadowbox Options
if($slideShow == 1)
{
	$delay = 'slideshowDelay: ' . $params->get('slideshowdelay', 5) . ','; 
}
else
{
	$delay = "";
}
# Overlay Options
if($showOverlay == 1)
{
	$overlay = "";
	if($params->get('overlaycolor') != "")
	{
		$overlayColor = 'overlayColor: "' . $params->get('overlaycolor') . '",'; 
	}
	else
	{
		$overlayColor = "";
	}

	$overlayOpacity = 'overlayOpacity:' . $params->get('overlayopacity', '0.5'); 
}
else
{
	$overlay = "showOverlay: false,";
}
$document->addCustomTag( '
<script type="text/javascript">
Shadowbox.init({
	' . $delay . '
	' . $overlay . '
	' . $overlayColor . '
	' . $overlayOpacity . '
});
</script>' );

/********************************
 Returns a true is file is an image i.e. jpg extension
********************************/
function isImage($file)
{
	$allowedTypes = array('jpg', 'gif', 'jpeg', 'png', 'bmp');
	if (in_array(pathinfo($file, PATHINFO_EXTENSION), $allowedTypes))
	{
		return true;
	}
}

/********************************
 Returns a nice version of the image file name i.e. My_car.jpg becoms My car, for use with the shadowbox title
********************************/
function imageTitle($image, $imageTitle)
{
	if ($imageTitle == 1)
	{
		$title = pathinfo($image, PATHINFO_FILENAME);
		$title = str_replace('_', ' ', $title);
	}
	return $title;
}

/********************************
 Returns a the large image file name i.e. removes the suffix
********************************/
function largeImage($file, $thumbSuffix)
{
	$file = str_replace($thumbSuffix, '', $file);
	return $file;
}

/********************************
 Returns an array of images in $imgDir
********************************/
function getAllNonThumbs($imgDir, $thumbSuffix)
{
	$allImages = array();
	$i = 0;
	if ($handle = opendir($imgDir)) {
		while (false !== ($file = readdir($handle))) 
		{
			if ($file != "." && $file != ".." && isImage($file)) 
			{
				if (!isThumb($file, $thumbSuffix))
				{
					$allImages[$i] = $file;
					$i++;
				}
			}
		}
		closedir($handle);
	}
	return $allImages;
}

/********************************
 Returns an array of thumbnail images in $imgDir
********************************/
function getAllThumbs($imgDir, $thumbSuffix)
{
	$allImages = array();
	$i = 0;
	if ($handle = opendir($imgDir)) {
		while (false !== ($file = readdir($handle))) 
		{
			if ($file != "." && $file != ".." && isImage($file)) 
			{
				if (isThumb($file, $thumbSuffix))
				{
					$allImages[$i] = $file;
					$i++;
				}
			}
		}
		closedir($handle);
	}
	return $allImages;
}

/************************
 Returns the thumbnail version of a file name i.e. in: image.jpg out: image_thumb.jpg
************************/
function returnThumb($image, $thumbSuffix)
{
	$ext = pathinfo($image, PATHINFO_EXTENSION);
	$filename = pathinfo($image, PATHINFO_FILENAME);
	$file = $filename . $thumbSuffix . '.' . $ext;
	return $file;
}

/************************
 Returns true if there is a corresponding thumbnail image
************************/
function hasAThumbnail($image, $thumbs, $thumbSuffix)
{
	$image = returnThumb($image, $thumbSuffix);
	
	if (in_array($image, $thumbs))
	{
		return true;
	}
}

/************************
 Returns array of images to be used i.e. if the image has a thumbnail that is used, if not the main image can be used
************************/
function getAllImages($nonThumbs, $thumbs, $thumbSuffix, $useFullAsThumb)
{
	$images = array();
	$i = 0;
	foreach($nonThumbs as $image)
	{
		if(hasAThumbnail($image, $thumbs, $thumbSuffix))
		{
			$image = returnThumb($image, $thumbSuffix);
			$images[$i] = $image;
			$i++;
		}
		else
		{
			if ($useFullAsThumb == 1)
			{
				$images[$i] = $image;
				$i++;
			}
		}
	}
	return $images;
}

/********************
 Returns true if the image name includes the $thumbSuffix
********************/
function isThumb($image, $thumbSuffix)
{
	if(strpos($image, $thumbSuffix))
	{
	return true;
	}
}

$nonThumbs = getAllNonThumbs($imgDir, $thumbSuffix);
$thumbs = getAllThumbs($imgDir, $thumbSuffix);
$images = getAllImages($nonThumbs, $thumbs, $thumbSuffix, $useFullAsThumb);

echo '<!--JTShadowbox Beta v.A-->';
require(JModuleHelper::getLayoutPath('mod_jtshadowbox'));
?>

