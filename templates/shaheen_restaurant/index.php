<?php
/**
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */
   
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<jdoc:include type="head" />

<link href="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/images/sh.ico" rel="shortcut icon" type="image/x-icon" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/css/template.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/css/editor.css" type="text/css" />

<title>Banjara Haveli Restaurant</title>

<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/js/jquery.tinyscrollbar.min.js"></script>
<!--<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/jquery.min.js"></script> -->
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/ddaccordion.js"></script>

<script type="text/javascript">

ddaccordion.init({
	headerclass: "silverheader", //Shared CSS class name of headers group
	contentclass: "submenu", //Shared CSS class name of contents group
	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false
	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc] [] denotes no content
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: false, //persist state of opened contents within browser session?
	toggleclass: ["", "selected"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})

</script>

<script type="text/javascript">

function mycarousel_itemLoadCallback(carousel, state)
{
    // Since we get all URLs in one file, we simply add all items
    // at once and set the size accordingly.
    if (state != 'init')
        return;

    jQuery.get('<?php echo $this->baseurl ?>/templates/shaheen_restaurant/dynamic_ajax2.txt', function(data) {
        mycarousel_itemAddCallback(carousel, carousel.first, carousel.last, data);
    });
};

function mycarousel_itemAddCallback(carousel, first, last, data)
{
    // Simply add all items at once and set the size accordingly.
    var items = data.split('|');

    for (i = 0; i < items.length; i++) {
        carousel.add(i+1, mycarousel_getItemHTML(items[i]));
    }

    carousel.size(items.length);
};

/**
 * Item html creation helper.
 */
function mycarousel_getItemHTML(url)
{
    return '<img src="' + url + '" width="177" height="117" alt="" />';
};

jQuery(document).ready(function() {
    jQuery('#mycarousel').jcarousel({
        itemLoadCallback: mycarousel_itemLoadCallback
    });
});

</script>


<style type="text/css">
.applemenu{margin: 0px 0; padding: 0; width: 270px; /*width of menu*/ border: 0px solid #9A9A9A;}
.applemenu div.silverheader a{background: black url(../images/leftbuttonbk.jpg) repeat-x center left;
font: normal 14px Tahoma, "Lucida Grande", "Trebuchet MS", Helvetica, sans-serif;
color: white; display: block; position: relative; /*To help in the anchoring of the ".statusicon" icon image*/
width: auto; padding: 10px 0; padding-left: 8px; text-decoration: none;}
.applemenu div.silverheader a:visited, .applemenu div.silverheader a:active{color: white;}
.applemenu div.selected a, .applemenu div.silverheader a:hover{background-image: url(images/leftbuttonbk.jpg); color: white;}
.applemenu div.submenu{ /*DIV that contains each sub menu*/ background:#Df7424; /* chocolate, #a3948d */ padding: 5px;
height: auto; /*Height that applies to all sub menu DIVs. A good idea when headers are toggled via "mouseover" instead of "click"*/}

#slideshow {width:700px; height:210px; position:relative; border:0 /* margin:2px 0 0 2px; */}
#slideshow IMG {width:727px; height:208px; position:absolute; top:0; left:0; z-index:8; opacity:0.0; border:0}
#slideshow IMG.active {z-index:10; opacity:1.0; border:0}
#slideshow IMG.last-active {z-index:9; border:0}
</style>


<script type="text/javascript">
		$(document).ready(function(){
			$('#scrollbar1').tinyscrollbar();	
		});
</script>	

<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shaheen_restaurant/js/jquery-1.js"></script>

<script type="text/javascript">
function slideSwitch() {
    var $active = $('#slideshow IMG.active');
    if ( $active.length == 0 ) $active = $('#slideshow IMG:last');

    // use this to pull the images in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    // uncomment the 3 lines below to pull the images in random order    
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );

    $active.addClass('last-active');
    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 3500 );
});

</script>

</head>

<body>

<div id="whole">

<div id="topcomments">	
<div class="comment1">"The food veers away from the sameness of the neighborhood." "Service is unhurried and solicitous." - <b>New York Post</b></div>
</div>

<div id="topmenu">
	<jdoc:include type="modules" name="mainMenu" style="xhtml" /> 
</div>

<div id="header">
<!-- <jdoc:include type="modules" name="mostcomments"/> -->
<!--
<div id="leftcomment">
</div>
<div id="slider">
</div>
<div id="rightcomment">
</div>
-->
	
</div>

<div id="yellow">
<div class="comment2">"Banjara in the east village, for succulent tandoori dishes that recall how good clay oven cooking can be. The tandoori cooked chicken & lamb are superb." - <b>The New York Times</b></div>
</div>

<div id="middle">
	<div id="left">
<!--
<div id="lefttop" style="display:none">
<div class="comment3" style="font-size:14px">"It's almost impossible to go wrong with any dish here." - <b>PAPER</b></div>
</div>
-->
<!-- <div class="comment3"><center>"It's almost impossible to go <br>wrong with any dish here." <br><br>- <b>PAPER</b><center></div> -->

<div id="leftmenus">
<div class="applemenu">

<div class="silverheader">
<div class="mainmenutitle2">
Starters
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=160&Itemid=121">Dhaka Kathiroll</a></td><th>$6.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=161&Itemid=121">Banjara Baingun</a></td><th>$6.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=162&Itemid=121">Dhaksin Se Shuru</a></td><th>$6.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=163&Itemid=121">Samosa</a></td><th>$3.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=164&Itemid=121">Onion Bhaji</a></td><th>$3.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=165&Itemid=121">Aloor Chop</a></td><th>$4.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=166&Itemid=121">Kolize Poori Wali</a></td><th>$4.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=167&Itemid=121">Poori Bhaji</a></td><th>$4.55</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=168&Itemid=121">Lamb Tawa Kabab</a></td><th>$6.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=169&Itemid=121">Tikhi Ghost Sheek</a></td><th>$6.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=170&Itemid=121">Assorted Vegetable <br>Fritters Nizami Keema</a></td><th>$7.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=171&Itemid=121">Jinga Poori</a></td><th>$11.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=172&Itemid=121">Indian Hot D’oeuyers</a></td><th>$9.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=173&Itemid=121">Banana Pakora</a></td><th>$3.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=174&Itemid=121">Kurkuri Okra</a></td><th>$5.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=175&Itemid=121">Pakna Kabab</a></td><th>$4.95</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle1">
Appetizers Cold
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=160&Itemid=121">Chana Chat</a></td><th>$4.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=161&Itemid=121">Dal Papri</a></td><th>$4.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=162&Itemid=121">Chicken Chat</a></td><th>$4.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=163&Itemid=121">Fresh Sald of the Day</a></td><th>$price</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle2">
Shorbe
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=160&Itemid=121">Tamatar Ka Shorbe</a></td><th>$3.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=161&Itemid=121">Soup of the Day</a></td><th>$3.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=162&Itemid=121">Dumpakht Dishes</a></td><th>$price</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=163&Itemid=121">Chicken or Lamb Dumpakht</a></td><th>$14.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=162&Itemid=121">Shrimp Dumpakht</a></td><th>$21.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=163&Itemid=121">Vegetable Dumpakht</a></td><th>$14.95</th>
</tr>
</table>

</div>


<div class="silverheader">
<div class="mainmenutitle1">
* Madras and Vindaloo 
</div>
</div>

<div class="silverheader">
<div class="mainmenutitle2">
* Lal Maas (Spicy) 
</div>
</div>


<div class="silverheader">
<div class="mainmenutitle1">
* Chicken, Lamb or Vegetable Balti 
</div>
</div>

<div class="silverheader">
<div class="mainmenutitle2">
**** Phaal Chicken, Lamb or Vegetable 
</div>
</div>

<div class="silverheader">
<div class="mainmenutitle1">
Clay Oven Delights 
</div>
</div>

<div class="silverheader">
<div class="mainmenutitle2">
A Salute to South Indian (Can be ordered as appetizer) 
</div>
</div>

<div class="silverheader">
<div class="mainmenutitle1">
Our Traditional Dishes 
</div>
</div>


<div class="silverheader">
<div class="mainmenutitle2">
Main Dishes Curry Specialities
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=151&Itemid=121">Mushroom / Shaag Curry</a></td><th>$12.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=152&Itemid=121">Dansak Curry</a></td><th>$12.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=153&Itemid=121">Mottor or Chana Curry</a></td><th>$12.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=154&Itemid=121">Chili Murg</a></td><th>$14.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=155&Itemid=121">Goat Bhuna / Dopiaza</a></td><th>$16.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=156&Itemid=121">Dildar</a></td><th>$13.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=157&Itemid=121">Chicken/Lamb Jalfrezi</a></td><th>$14.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=158&Itemid=121">Paneer Makhani</a></td><th>$13.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=159&Itemid=121">Paneer Chili</a></td><th>$13.95</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle1">
Our Special Vegetable Dishes
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=167&Itemid=121">SAMOSA</a></td><th>$3.00</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=168&Itemid=121">MIXED PAKORA</a></td><th>$6.00</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=169&Itemid=121">SAMOSA CHATT</a></td><th>$6.00</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=170&Itemid=121">PAPPARI CHATT</a></td><th>$6.00</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=171&Itemid=121">AALLU TIKKA</a></td><th>$3.00</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=172&Itemid=121">KATHEE ROLLE</a></td><th>$8.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=173&Itemid=121">ALLOO CHOLAY CHATT</a></td><th>$6.00</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle2">
Seafood Specialities
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=174&Itemid=121">PALAK PANEER</a></td><th>$7.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=177&Itemid=121">MALAEE KOOFTA</a></td><th>$8.95 </th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=178&Itemid=121">YOGURT CURRY (Karhee)</a></td><th>$7.95 </th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle1">
Special Biryani Dishes
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=186&Itemid=121">SHRIMP BARYANEE</a></td><th>$11.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=187&Itemid=121"> LAMB BARYANEE</a></td><th>$10.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=188&Itemid=121">  CHICKEN BARYANEE</a></td><th>$8.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=189&Itemid=121"> MUGHLAEE BARYANEE</a></td><th>$7.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=190&Itemid=121">VEGETABLE BARYANEE</a></td><th>$7.95</th>
</tr>
<tr>
<td><a href="http://banjara-haveli.com/index.php?option=com_content&view=article&id=191&Itemid=121">SAADA CHAWAL</a></td><th>$4.95</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle2">
Special Thali (The Traditional Indian Serving Tray)
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="">ROOHU FISH</a></td><th>$12.95</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle1">
Accompaniments
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href=""> LACHEE WALA PARATHA</a></td><th>$2.50</th>
</tr>
<tr>
<td><a href="">PLAIN PHULKA</a></td><th>$2.00</th>
</tr>
<tr>
<td><a href="">ROTTEE</a></td><th>$1.50</th>
</tr>
<tr>
<td><a href="">BHATOORA</a></td><th>$1.50</th>
</tr>

<tr>
<td><a href=""> PUREE</a></td><th>$1.50</th>
</tr>

<tr>
<td><a href=""> NAAN</a></td><th>$1.50</th>
</tr>
<tr>
<td><a href=""> SESAME NAAN</a></td><th>$2.00 
</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle2">
Indian Bread
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="">KEEMA PARATHA</a></td><th>$4.95</th>
</tr>
<tr>
<td><a href="">GARLIC KULCHA</a></td><th>$3.95</th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle1">
Beverages
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href="">GULAB JAMUN</a></td><th>$3.00 </th>
</tr>
</table>

</div>



<div class="silverheader">
<div class="mainmenutitle2">
Special Drinks
</div>
</div>

<div class="submenu">

<table class="items" align="center">
<tr>
<td><a href=""> MANGO LASEE</a></td><th>$3.95</th>
</tr>
<tr>
<td><a href=""> YOGURT LASEE</a></td><th>$2.95</th>
</tr>
<tr>
<td><a href=""> SOFT DRINK</a></td><th>$1.49</th>
</tr>
</table>

</div>


</div>
</div>
		

<div id="lefttop">
<div class="comment3" style="font-size:16px; text-align:center">
We hope you enjoy dining with us and invite you to share your comments with our staff. <br><br>If your favourite Indian dish is not on the menu, we will be happy to create it for you.
</div>
</div>		
		
<div id="leftbottom">
<div class="comment3" style="font-size:14px; color:black"><b>TOP COMMENTS WILL BE HERE</b>
<br><br>Comment-1: "The wonderful Restaurant..."
<br><br>Comment-2: "The heavenly food Restaurant..."
<br><br>Comment-3: "The very best Restaurant..."

</div>
</div>

<div id="lefttop">
<div class="comment3" style="text-align:center; font-size:14px">1998 Eating & Drinking Awards, <br><b>"Best Indian Restaurant."</b><br><br>- TIME OUT, NY</div>
</div>

<div id="lefttop">
<div class="comment3" style="text-align:center; font-size:14px">"This Indian is world away in <b>quality consistency</b> superb."<br><br>- ZAGAT SURVEY, 1999</div>
</div>

</div>


	
<div id="right">

<!-- Contents will be dynamic inside this DIV -->

<jdoc:include type="message" />
<jdoc:include type="component" />

<?php
if($this->countModules('mainBanner')){?> 
<jdoc:include type="modules" name="mainBanner" style="xhtml" /> 
<?php } ?>


</div>


</div>

<div id="yellow2"></div>

<div id="footer">
<div id="footerleft">Copyright &copy 2013 Banjara Haveli Restaurant | Website Designed & Developed by <a href="http://www.webtechbd.net" class="footerlinks">WebTechBD.net</a></div>
<div id="footerright"><a href="privacy.html" class="footerlinks">Privacy Policy</a> | <a href="terms.html" class="footerlinks">Terms & Conditions</a>
</div>
</div>

</div>

</body>
</html>