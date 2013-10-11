	var Site = {
	
			start: function(){
				if($('vertical')) Site.vertical();
				if($('horizontal')) Site.horizontal();
				if($('accordion')) Site.accordion();
			},
			
			vertical: function(){
				var list = $$('#vertical li div.collapse');
				var headings = $$('#vertical li h3');
				var collapsibles = new Array();
				
				headings.each( function(heading, i) {

					var collapsible = new Fx.Slide(list[i], { 
						duration: 500, 
						transition: Fx.Transitions.linear,
						onComplete: function(request){ 
							var open = request.getStyle('margin-top').toInt();
							if(open >= 0) new Fx.Scroll(window).toElement(headings[i]);
						}
					});
					
					collapsibles[i] = collapsible;
					
					heading.onclick = function(){
						var span = $E('span', heading);

						if(span){
							var newHTML = span.innerHTML == '+' ? '-' : '+';
							span.setHTML(newHTML);
						}
						
						collapsible.toggle();
						return false;
					}
					
					collapsible.hide();
					
				});
				
				$('collapse-all').onclick = function(){
					headings.each( function(heading, i) {
						collapsibles[i].hide();
						var span = $E('span', heading);
						if(span) span.setHTML('+');
					});
					return false;
				}
				
				$('expand-all').onclick = function(){
					headings.each( function(heading, i) {
						collapsibles[i].show();
						var span = $E('span', heading);
						if(span) span.setHTML('-');
					});
					return false;
				}
				
			},
			
			horizontal: function(){
				var list = $$('#horizontal li div.collapse');
				var headings = $$('#horizontal li h3');
				var collapsibles = new Array();
				
				headings.each( function(heading, i) {

					var collapsible = new Fx.Slide(list[i], { 
						duration: 500, 
						transition: Fx.Transitions.linear
					});
					
					collapsibles[i] = collapsible;
					
					heading.onclick = function(){
						var span = $E('span', heading);

						if(span){
							var newHTML = span.innerHTML == '+' ? '-' : '+';
							span.setHTML(newHTML);
						}
						
						collapsible.toggle('horizontal');
						return false;
					}
					
				});
				
				$('slideout-all').onclick = function(){
					headings.each( function(heading, i) {
						collapsibles[i].hide('horizontal');
						var span = $E('span', heading);
						if(span) span.setHTML('+');
					});
					return false;
				}
				
				$('slidein-all').onclick = function(){
					headings.each( function(heading, i) {
						collapsibles[i].show('horizontal');
						var span = $E('span', heading);
						if(span) span.setHTML('-');
					});
					return false;
				}
				
			},
			
			accordion: function(){								
				var list = $$('#accordion li div.collapse');
				var headings = $$('#accordion li h3');				
				var backtotops =  $$('#accordion li h2');	
				var collapsibles = new Array();
				var spans = new Array();
				
				headings.each( function(heading, i) {

					var collapsible = new Fx.Slide(list[i], { 
						duration: 500, 
						transition: Fx.Transitions.quadIn
					});
					
					collapsibles[i] = collapsible;
					spans[i] = $E('span', heading);
					
					
					
					heading.onclick = function(){																		
						var span = $E('span', heading);

						if(span){
							var newHTML = span.innerHTML == '+' ? '-' : '+';
							span.setHTML(newHTML);
						}
						
						for(var j = 0; j < collapsibles.length; j++){
							if(j!=i) {
								collapsibles[j].slideOut();
								if(spans[j]) spans[j].setHTML('+');
							}
						}
						
						collapsible.toggle();
						
						return false;
					}									
																															
					collapsible.hide();					
				});
				
				backtotops.each( function(backtotop,i)
				{	
					backtotop.onclick = function(){														
						collapsibles[i].hide();
																																												
					return false;
					}
				});
											
			}
		};
		window.addEvent('domready', Site.start);
