/*
# ------------------------------------------------------------------------
# Free Slide SP1 - Slideshow module for Joomla 1.5
# ------------------------------------------------------------------------
# Copyright (C) 2010 JoomShaper.com. All Rights Reserved.
# @license - GNU/GPL, see LICENSE.php,
# Author: JoomShaper.com
# Websites:  http://www.joomshaper.com -  http://www.joomxpert.com
# ------------------------------------------------------------------------
*/
var freeSlide_sp1=new Class({Implements:[Options,Events],options:{transition:'cover-inplace-fade',size:{width:640,height:360},interval:5000,fxOptions:{}},initialize:function(a,b){this.setOptions(b);this.container=$(a);this.items=this.container.getChildren();if(this.items.length>1){this.current_item_index=0;this.preceding_item_index=false;this.play_timer=false;this.play_right_running=false;this.play_left_running=false;this.transition=false;this.fx=false;this.fxs=[];this.fxs_mix={};this.build();this.fireEvent('onInitialized')}},build:function(){var a={display:'block',margin:0,padding:0},b;this.container.setStyles($merge(a,{overflow:'hidden'}));if(this.container.getStyle('position')!='absolute'){this.container.setStyle('position','relative')}for(b=0;b<this.items.length;b++){this.items[b].setStyles(a);this.fxs[b]=false}this.hidePrecedingitem=function(){if(this.preceding_item_index!==false){this.items[this.preceding_item_index].setStyle('display','none')}}.pass([],this);this.setTransition(this.options.transition)},setSize:function(a){var b={width:'horizontal',height:'vertical'},c,d,e;if(this.fx){this.fx.cancel()}for(c in a){d=a[c];for(e=0;e<this.items.length;e++){this.items[e].setStyle(c,d+'px')}this.container.setStyle(c,d+'px');if(this.transition.type=='slide'){if(this.transition.direction==b[c]){d*=this.items.length}this.subcontainer.setStyle(c,d+'px')}}this.options.size=a;this.displayItem(this.current_item_index,this.preceding_item_index,true)},setTransition:function(a){var b;a=a.split('-').associate(['type','direction','additional']);if(!a.additional){a.additional=''}if(this.transition===false||this.transition.type!=a.type||this.transition.direction!=a.direction||this.transition.additional!=a.additional){if(a.type=='slide'){if(!this.subcontainer){this.subcontainer=new Element('div');for(b=0;b<this.items.length;b++){this.items[b].setStyles({'display':'block','position':'static','left':0,'top':0,'opacity':1,'float':'none'}).inject(this.subcontainer)}this.subcontainer.inject(this.container);this.subcontainer.setStyles({position:'absolute',margin:0,padding:0,left:0,top:0});this.fx=new Fx.Tween(this.subcontainer)}else if(this.fx){this.fx.cancel()}if(a.direction=='horizontal'){this.subcontainer.setStyle('top',0)}else{this.subcontainer.setStyle('left',0)}if(a.direction=='horizontal'){for(b=0;b<this.items.length;b++){this.items[b].setStyle('float','left')}}}else{if(this.subcontainer){for(b=0;b<this.items.length;b++){this.items[b].inject(this.container)}this.subcontainer.dispose();this.subcontainer=false}for(b=0;b<this.items.length;b++){this.items[b].setStyles({'opacity':1,'position':'absolute','float':'none'})}}this.transition=a;this.setSize(this.options.size)}},displayItem:function(a,b,c){var d,e,g,h,l={horizontal:['left','width'],vertical:['top','height']},f=l[this.transition.direction],k,i,j;if(this.transition.type=='slide'){k=this.options.size[f[1]]*b*-1;i=this.options.size[f[1]]*a*-1;if(c){this.subcontainer.setStyle(f[0],i+'px')}else{g=this.getSlideFx().cancel();g.start(f[0],k,i)}}else{d=this.items[a];e=this.items[b];for(j=0;j<this.items.length;j++){if(a===j){this.items[j].setStyles({'display':'block','z-index':1,'left':0,'top':0});if(this.transition.direction=='inplace'&&this.transition.additional=='fade'){this.items[j].setOpacity(0)}}else if(b===j){this.items[j].setStyles({'display':'block','z-index':0,'left':0,'top':0})}else{this.items[j].setStyle('display','none')}}if(this.transition.direction=='inplace'){if(this.transition.additional=='fade'){g=this.getItemFx(a).cancel();if(c){d.setOpacity(1)}else{g.addEvent('complete',this.hidePrecedingitem);g.start({opacity:[0,1]})}}else{if(b!==false){this.items[b].setStyle('display','none')}}}else{k=this.options.size[f[1]];i=0;if(a<b){k*=-1}if(c){d.setStyle(f[0],i)}else{d.setStyle(f[0],k+'px');e.setStyle(f[0],i);if(this.transition.additional=='push'){g=this.getItemsFx([a,b]).cancel();h={'0':{}};h['0'][f[0]]=[k,i];if(e){h['1']={};h['1'][f[0]]=[i,k*-1]}g.start(h)}else{g=this.getItemFx(a).cancel();g.addEvent('complete',this.hidePrecedingitem);h={};h[f[0]]=[k,i];if(this.transition.additional=='fade'){d.setOpacity(0);h.opacity=[0,1]}g.start(h)}}}}},getItemFx:function(a){if(!this.fxs[a]){this.fxs[a]=new Fx.Morph(this.items[a])}this.fxs[a].removeEvent('complete',this.hidePrecedingitem).setOptions(this.options.fxOptions);return this.fxs[a]},getItemsFx:function(a){var b=a.join('_'),c=[],d;if(!this.fxs_mix[b]){for(d=0;d<a.length;d++){if(a[d]!==false){c.push(this.items[a[d]])}}this.fxs_mix[b]=new Fx.Elements(new Elements(c))}this.fxs_mix[b].setOptions(this.options.fxOptions);return this.fxs_mix[b]},getSlideFx:function(a){this.fx.setOptions(this.options.fxOptions);return this.fx},walk:function(a,b,c){if(a!==this.current_item_index){this.preceding_item_index=this.current_item_index;this.current_item_index=a;var d=false;if(c!==true){if(this.play_right_running){d='play'}else if(this.play_left_running){d='playback'}if(d){this.stop()}}this.fireEvent('onBeforeDisplayItem',[this.current_item_index,this.preceding_item_index]);this.displayItem(a,this.preceding_item_index,b);if(d){this[d]()}this.fireEvent('onWalk',[this.current_item_index,this.preceding_item_index])}},next:function(a){var b=this.current_item_index+1;if(b===this.items.length){b=0}this.walk(b,false,a)},previous:function(a){var b=this.current_item_index-1;if(b<0){b=this.items.length-1}this.walk(b,false,a)},play:function(a){this.stop();if(a&&$type(a)=='number'){this.options.interval=a}this.play_right_running=true;this.play_timer=this.next.periodical(this.options.interval,this,[true]);this.fireEvent('onStartPlay',['play'])},playback:function(a){this.stop();if(a&&$type(a)=='number'){this.options.interval=a}this.play_left_running=true;this.play_timer=this.previous.periodical(this.options.interval,this,[true]);this.fireEvent('onStartPlayback',['playback'])},stop:function(){$clear(this.play_timer);this.play_right_running=false;this.play_left_running=false;this.fireEvent('onStop',['stop'])},addPlayerControls:function(a,b,c){if(!c){c='click'}for(var d=0;d<b.length;d++){b[d].addEvent(c,this[a].pass([false],this))}},addItemWalkers:function(a,b){if(!b){b='click'}for(var c=0;c<a.length;c++){a[c].addEvent(b,this.walk.pass([c,false,false],this))}}});