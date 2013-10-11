<?php defined('_JEXEC') or die('Restricted access'); ?>

<form id="searchForm" action="<?php echo JRoute::_( 'index.php?option=com_search' );?>" method="post" name="searchForm">
	<table cellpadding="0" cellspacing="0" border="0" class="contentpaneopen<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
		<tr>
        
        	<td width="60%">
            	<table cellpadding="0" cellspacing="0" border="0">
                	<tr>
                    	<td nowrap="nowrap">
                            <label for="search_searchword" class="searchword_style">
                                <?php echo JText::_( 'Search Keyword' ); ?>:
                            </label>
						</td>
          			</tr>
                    <tr class="bottom_of_src_keyword">
                        <td nowrap="nowrap">
                            <input type="text" name="searchword" id="search_searchword" size="30" value="<?php echo $this->escape($this->searchword); ?>" class="inputbox" />
                        </td>
                        <td width="100%" nowrap="nowrap">
                            <button name="Search" onClick="this.form.submit()" class="button src_button"><?php echo JText::_( '' );?></button>
                        </td>
				   </tr>
                    <tr class="bottom_of_src_keyword">
                        <td colspan="3">
                        	                        
                            <?php echo $this->lists['searchphrase']; ?>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <label for="ordering" class="searchword_style">
                                <?php echo JText::_( 'Ordering' );?>:
                            </label>
                        </td>
                    </tr>
                    <tr>
                    	<td>
                    		
                            <?php echo $this->lists['ordering'];?>
                           
                        </td>
                  	</tr>
                </table>
                
                
                
                </td>
            
             	<td width="40%">
                	<table>
                    <tr>
                        <td>
                            <?php if ($this->params->get( 'search_areas', 1 )) : ?>
                             <label class="searchword_style">
                            	<?php echo JText::_( 'Search Only' );?>:
                            </label>
                            <?php $item_counter = 0; ?>
                        </td>
                    </tr>
                            
							
							<?php foreach ($this->searchareas['search'] as $val => $txt) :
                                $checked = is_array( $this->searchareas['active'] ) && in_array( $val, $this->searchareas['active'] ) ? 'checked="checked"' : '';
							?>
							
							<?php
								if(($item_counter%2) == 0){
                    				echo'<tr>';
                            	}	
							?>
                                        <td>
                                            <input class="border_out" type="checkbox" name="areas[]" value="<?php echo $val;?>" id="area_<?php echo $val;?>" <?php echo $checked;?> />
                                            <label for="area_<?php echo $val;?>">
                                                <?php echo JText::_($txt); ?>
                                            </label>
                                        
                                            
                                        </td>
                        
                       		<?php
								if(($item_counter % 2) != 0){
                    				echo'</tr>';
                        		}
							?>
                            
                            <?php $item_counter++; ?>   
                    <?php endforeach; ?>
                	<?php endif; ?>
                        
                    </table>
                                
                </td>
        
           
		</tr>
	</table>
    


	<table width="627" cellpadding="0" cellspacing="0" border="0">
    	<tr>
        	
            <td width="50%">
            	<table class="searchintro<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
                    <tr>
                        <td colspan="3" >
                            <!--<br />-->
                            <?php //echo JText::_( 'Search Keyword' ) .' <b>'. $this->escape($this->searchword) .'</b>'; ?>
                            <?php echo JText::_( 'Search Keyword' ) .' '. $this->escape($this->searchword); ?>
                
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <!--<br />-->
                            <?php echo $this->result; ?>
                        </td>
                    </tr>
                 </table>
   			</td>
            
            <td width="50%" align="right">
            	<?php if($this->total > 0) : ?>
                <div align="center">
                    <div style="float: right;">
                        <label for="limit">
                            <?php echo JText::_( 'Display Num' ); ?>
                        </label>
                        <?php echo $this->pagination->getLimitBox( ); ?>
                    </div>
                    <div>
                        <?php echo $this->pagination->getPagesCounter(); ?>
                    </div>
                </div>
                <?php endif; ?>
            </td>
            
    	</tr>
    </table>
	
<input type="hidden" name="task"   value="search" />
</form>
