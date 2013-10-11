<?php
//defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
?>
<script src="http://maps.google.com/maps?file=api&amp;v=2.x<?php if( $params->get('google_map_key') != "" ) {  echo  '&amp;key=' . $params->get('google_map_key');} ?>" type="text/javascript"></script>
<script type="text/javascript"> 

    var map;
    var marker = null;	

function initialize() {
  if (GBrowserIsCompatible()) {
     map = new GMap2(document.getElementById("map_canvas"));
     map.setCenter(new GLatLng(<?php echo $params->get('latitude'); ?>, <?php echo $params->get('longitude'); ?>),
                              <?php echo $params->get('zoom'); ?>);
     
     map.setMapType(G_NORMAL_MAP);
	
     marker = new GMarker(new GLatLng(<?php echo $params->get('marker_lat'); ?>, <?php echo $params->get('marker_lon'); ?>));
     GEvent.addListener(marker,  "mouseover",  addMessag);
     map.addOverlay( marker );

var mapTypeControl = new GMapTypeControl();

        var topRight = new GControlPosition(G_ANCHOR_TOP_RIGHT, new GSize(5,5));
	
	if( (<?php echo $params->get('menu_map'); ?>) !=0) {
	   map.addControl(mapTypeControl, topRight); /* topRight вывод самих кнопок*/
	}
	if( (<?php echo $params->get('control_map'); ?>) !=0 ) {	
		map.addControl(new GSmallMapControl());
	}
  }
}
  
function addMessag() {
  marker.openInfoWindowHtml("<?php echo $params->get('messag'); ?>");
}

</script>
  
<!--<body onload="initialize()"  onunload="GUnload()">
  <div id="map_canvas" style=
      "width: <?php echo $params->get('map_width');?>px; height: <?php echo $params->get('map_height'); ?>px;
      border: 1px solid black; float: rigth;" >
  </div>

</body> -->
<div class="mapx">
<iframe src="modules/mod_location_map/razn_google_map.php?google_map_key=<?php echo $params->get('google_map_key')?>&
	latitude=<?php echo $params->get('latitude')?>&
	longitude=<?php echo $params->get('longitude')?>&
	zoom=<?php echo $params->get('zoom')?>&
	marker_lat=<?php echo $params->get('marker_lat')?>&
	marker_lon=<?php echo $params->get('marker_lon')?>&
	menu_map=<?php echo $params->get('menu_map')?>&
	control_map=<?php echo $params->get('control_map')?>&
	messag=<?php echo $params->get('messag')?>&
	map_width=<?php echo $params->get('map_width')?>&
	map_height=<?php echo $params->get('map_height')?>"
	
	scrolling="no" style="width: <?php echo $params->get('map_width')?>px; height: <?php echo $params->get('map_height')?>px; border:1px solid #DCDCDC;margin-left:16px;margin-top:15px; marginwidth="0px" marginheight="0px"  frameborder="0">
</iframe>

<div style="margin:10px 0px 0px 20px;"> <?php echo $params->get('map_text')?></div>
</div>