<?php defined('_JEXEC') or die('Restricted access'); ?>

<table bgcolor="#dcdcdc" width="627" cellpadding="1" cellspacing="1" border="0" class="contentpaneopen<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
	<!--<tr>
		<td>
        <table cellpadding="0" cellspacing="0" border="1" width="527">-->
       <?php $bgcolor_counter = 0; ?>  
        	
		<?php
		
			
		foreach( $this->results as $result ) : ?>
        		<tr>                    
         <?php
		 	/*echo '<pre>';
			print_r($result);
			echo '</pre>';*/
			
			if(empty($result->title) && $result->gallery_id){
				$result->title = $result->photo_src;
				$temp = explode('.',$result->title);
				$result->title = $temp[0];
			}			
		 	
			if(($bgcolor_counter%2) == 0){
         		$row_color = 'class = "search_item_number_color"';	      
				$row_color2 = 'class = "search_item_number_color search_2nd_column"';	      
       		}elseif(($bgcolor_counter%2) != 0){
				$row_color = 'class = "search_item_number_blank"';	      
				$row_color2 = 'class = "search_item_number_blank search_2nd_column"';
			}	      
		 ?>
                
        		<!--<tr>
                	<td  class="search_item_number">-->
                    <td <?php echo $row_color; ?>>
                    	<span class="small<?php echo $this->params->get('pageclass_sfx' ); ?>">
                        <?php //echo $this->pagination->limitstart + $result->count.'. ';?>
                        
                        <?php if( ($this->pagination->limitstart + $result->count)<= 9){
								echo "0";
							 	echo $this->pagination->limitstart + $result->count.' ';
								}
							 else
							 	echo $this->pagination->limitstart + $result->count.' ';
						?>
                        
						</span>
                    </td>
                    <td <?php echo $row_color2; ?>>
                    	<table cellpadding="0" cellspacing="0" border="0" width="100%">
                        	<tr>
                            	<td  <?php echo $row_color2; ?> width="100%">
                                <?php 
								//Start: Added for Phpto and Video gallery
									if ( $result->photo_src || $result->video_image_src ){
										if($result->video_image_src){
										?>
                                        	<a href="<?php echo JRoute::_($result->href); ?>"><img src="<?php echo $result->video_image_src; ?>" height="60" width="80" border="none" class="search_page_image"/></a>
										<?php
										}else{
											if($result->gallery_id){				
											?>                                  	
                                				<a href="<?php echo JRoute::_($result->href); ?>"><img src="<?php echo'images/morfeoshow/'.$result->photo_src_folder.'/thumbs/'.$result->photo_src; ?>" height="60" width="80" border="none" class="search_page_image"/></a>
                                            <?php }else{ ?> 
												<a href="<?php echo JRoute::_($result->href); ?>"><img src="<?php echo'images/morfeoshow/'.$result->photo_src_folder.'/'.$result->photo_src; ?>" height="60" width="80" border="none" class="search_page_image"/></a>
										<?php
												  } 											
										}
									}
								//End
                                
                                	if ( $result->href ) :
						if ($result->browsernav == 1 ) : ?>
							<a href="<?php echo JRoute::_($result->href); ?>" target="_blank">
						<?php else : ?>
							<a href="<?php echo JRoute::_($result->href); ?>">
						<?php endif;

						echo $this->escape($result->title);

						if ( $result->href ) : ?>
							</a>
						<?php endif;
						if ( $result->section ) : ?>
							<br />
							<span class="small<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
								(<?php echo $this->escape($result->section); ?>)
							</span>
						<?php endif; ?>
					<?php endif; ?>
                                </td>
                            </tr>
                            
                            <tr>
                            	<td>
                                
                                	<div class="search_table">
									<?php echo $result->text; ?>
                                	</div>
                                	<?php
                                    	if ( $this->params->get( 'show_date' )) : ?>
                                	<div class="small<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
                                    	<?php echo $result->created; ?>
                                	</div>
                                		<?php endif; ?>
                                        
                                        
                                </td>
                            </tr>
                            
                        </table>
                    </td>
               
            
            
			         
            </tr>
            <?php $bgcolor_counter++; ?>  
		<?php endforeach; ?>
       
     <!-- </table>
            
            
		</td>
	</tr>-->
	
</table>
<table>
	<tr>
		<td colspan="3">
			<div align="center">
				<?php echo $this->pagination->getPagesLinks( ); ?>
			</div>
		</td>
	</tr>
</table>