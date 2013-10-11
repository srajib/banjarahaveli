<?php
/**
 * @version 1.0 $Id: default.php 195 2009-01-30 06:33:12Z schlu $
 * @package Joomla
 * @subpackage QuickFAQ
 * @copyright (C) 2008 - 2009 Christoph Lukes
 * @license GNU/GPL, see LICENCE.php
 * QuickFAQ is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License 2
 * as published by the Free Software Foundation.

 * QuickFAQ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with QuickFAQ; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<div id="quickfaq" class="quickfaq">

<p class="buttons">
		<?php echo quickfaq_html::favouritesbutton( $this->params ); ?>
		<?php echo quickfaq_html::mailbutton( 'category', $this->params, $this->category->slug ); ?>
		<?php echo quickfaq_html::addbutton( $this->params ); ?>
</p>
<?php if ($this->params->get( 'show_page_title', 1 )) : ?>

    <div class="componentheading">
		<?php echo $this->params->get('page_title'); ?>
	</div>

<?php endif; ?>

<?php if ($this->category->id > 0) : ?>

<?php echo $this->loadTemplate('category'); ?>

<?php endif; ?>

<?php 
//only show this part if subcategries are available
if (count($this->categories) && $this->category->id > 0) :
?>

<?php echo $this->loadTemplate('subcategories'); ?>

<?php endif; ?>

<?php 
//only show this part if items are available
$n = count($this->items);
if ($n || $this->lists['filter']) :
?>

<?php echo $this->loadTemplate('items'); ?>

<?php  endif; /*?>

<!--pagination-->
<p class="pageslinks">
	<?php echo $this->pageNav->getPagesLinks(); ?>
</p>

<p class="pagescounter">
	<?php echo $this->pageNav->getPagesCounter(); ?>
</p>
*/
?>

</div>