<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<form action="index.php" method="post">
	<div class="search<?php echo $params->get('moduleclass_sfx') ?>">
		<?php
		    $output = '<div id="search_input_box"><input name="searchword" id="mod_search_searchword" maxlength="'.$maxlength.'" alt="'.$button_text.'" class="inputbox'.$moduleclass_sfx.'" type="text" size="'.$width.'" value="'.$text.'"  onblur="if(this.value==\'\') this.value=\''.$text.'\';" onfocus="if(this.value==\''.$text.'\') this.value=\'\';" /></div>';

			if ($button) :
			    if ($imagebutton) :
			        //$button = '<input type="image" value="'.$button_text.'" class="button'.$moduleclass_sfx.'" src="'.$img.'" onclick="this.form.searchword.focus();"/>';
					$button = '<div id="search_button"><input type="image" value="'.$button_text.'" class="button'.$moduleclass_sfx.'" src="templates/brtc/images/btn_search.gif" onclick="this.form.searchword.focus();"/></div>';
			    else :
			        $button = '<div id="search_button"><input type="submit" value="'.$button_text.'" class="button'.$moduleclass_sfx.'" onclick="this.form.searchword.focus();"/></div>';
			    endif;
			endif;

			switch ($button_pos) :
			    case 'top' :
				    $button = $button.'<br />';
				    $output = $button.$output;
				    break;

			    case 'bottom' :
				    $button = '<br />'.$button;
				    $output = $output.$button;
				    break;

			    case 'right' :
				    $output = $output.$button;
				    break;

			    case 'left' :
			    default :
				    $output = $button.$output;
				    break;
			endswitch;

			echo $output;
		?>
	</div>
	<input type="hidden" name="task"   value="search" />
	<input type="hidden" name="option" value="com_search" />
	<input type="hidden" name="Itemid" value="<?php echo $mitemid; ?>" />
</form>