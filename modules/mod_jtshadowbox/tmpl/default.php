<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>

<div id="jtshadowbox">
	<?php
	if ($imagesDirectory == null)
	{
		echo "Please choose an image directory in the JT Shadowbox module options.";
	}
	else
	{
	?>
		<?php
		if ($messageLocation == 'top')
		{
			echo  $message;
		}
		?>
		<ul class="<?php echo $layout; ?> <?php echo $align; ?>">
		<?php
		foreach ($images as $image)
		{
			$largeImage = largeImage($image, $thumbSuffix);
			$titleExtra = imageTitle($largeImage, $imageTitle);
			
			$item  = '<li>';
			$item .= '<a title="' . $title . ' ' . $titleExtra . '" ';
			$item .= 'rel="shadowbox[' . $unique . ']" ';
			$item .= 'href="' . $fullPath . '/' . $largeImage . '">';
			$item .= '<img alt="' . $title . ' ' . $titleExtra . '" src="' . $fullPath . '/' . $image . '" ';
			if ($resizeImages == 1 || $resizeImages == 2 && !isThumb($image, $thumbSuffix))
			{
				$item .= 'width="' . $thumbWidth . '"';
			}
			$item .= '>';
			$item .= '</a>';
			$item .= '</li>';
			$item .= "\n";
			echo $item;
		}
		?>
		</ul>
		<?php
		if ($messageLocation == 'bottom')
		{
			echo  $message;
		}
		?>
	<?php
	}
	?>
</div>