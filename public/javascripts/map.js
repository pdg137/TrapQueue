var map_max_lat = -90
var map_min_lat = +90
var map_max_lng = -180
var map_min_lng = +180
var map

function mapUpdateMinMax(lat, lng)
{
  if(lat > map_max_lat)
    map_max_lat = lat;
  if(lat < map_min_lat)
    map_min_lat = lat;

  if(lng > map_max_lng)
    map_max_lng = lng;
  if(lng < map_min_lng)
    map_min_lng = lng;
}

function mapInit(id)
{
  map = new GMap2($("#map_canvas")[0])
}

function mapAddJob(lat, lng)
{
  if(lat == null || lng == null) return;
  mapUpdateMinMax(lat,lng)
  map.setCenter(new GLatLng((map_max_lat+map_min_lat)/2, (map_min_lng+map_max_lng)/2), 3)
  var point = new GLatLng(lat,lng)
  map.addOverlay(new GMarker(point))
}