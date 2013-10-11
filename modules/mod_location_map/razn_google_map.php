<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>

<script src="http://maps.google.com/maps?file=api&amp;v=2.x<?php if( $_GET['google_map_key'] != "" ) {  echo  '&amp;key=' . $_GET['google_map_key'];} ?>" type="text/javascript"></script>
<script type="text/javascript"> 
//ABQIAAAAi44TY0V29QjeejKd2l3ipRTRERdeAiwZ9EeJWta3L_JZVS0bOBQlextEji5FPvXs8mXtMbELsAFL0w
   
    var map;
    var marker = null;	

function initialize() {
  if (GBrowserIsCompatible()) {
     map = new GMap2(document.getElementById("map_canvas"));
     map.setCenter(new GLatLng(<?php echo $_GET['latitude']; ?>, <?php echo $_GET['longitude']; ?>),
                              <?php echo $_GET['zoom']; ?>);
     
     /*set type map: G_HYBRID_MAP, G_NORMAL_MAP, G_SATELLITE_MAP*/
     map.setMapType(G_NORMAL_MAP);
	
     /* old Ukraine  map.setCenter(new GLatLng(50.4100, 31.1009), 5);*/
     /*old  map.setCenter(new GLatLng(37.4419, -122.1419), 13); */
     /*вывод маркера с сообщением Ukraine, Kyiv*/
     /*map.openInfoWindow(map.getCenter(),document.createTextNode("Ukraine, Kyiv"));*/
      
     marker = new GMarker(new GLatLng(<?php echo $_GET['marker_lat']; ?>, <?php echo $_GET['marker_lon']; ?>));
     GEvent.addListener(marker,  "mouseover",  addMessag);
     map.addOverlay( marker );
/********************************************************************************************************/
	var mapTypeControl = new GMapTypeControl();

        /* old var mapTypeControl = new GMapTypeControl(); GMapTypeControl() -- Создает контроль с кнопками, чтобы переключить между типами карты.--правый верхний угол*/
	
	/*задание координат где выаодить кнопку с типами карт*/
        var topRight = new GControlPosition(G_ANCHOR_TOP_RIGHT, new GSize(5,5));
	
	if( (<?php echo $_GET['menu_map']; ?>) !=0) {
	   map.addControl(mapTypeControl, topRight); /* topRight вывод самих кнопок*/
	}
	if( (<?php echo $_GET['control_map']; ?>) !=0 ) {	
		/*GSmallMapControl() -- Создает контроль с кнопками, +- право/лево в  угол*/
		map.addControl(new GSmallMapControl());
	}
  }
}
  
function addMessag() {
  marker.openInfoWindowHtml("<?php echo $_GET['messag']; ?>");
}

</script>
</head>
  
<body onload="initialize()"  onunload="GUnload()" style="margin:0px;">
	
  <div id="map_canvas" style=
      "width: <?php echo $_GET['map_width'];?>px; height: <?php echo $_GET['map_height']; ?>px;
      border: 0px solid black; float: right; font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:10px;" >
    
  </div>

</body>
</html>
