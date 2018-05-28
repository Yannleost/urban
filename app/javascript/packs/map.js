import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  const path = JSON.parse(mapElement.dataset.path);
  map.addMarkers(markers);
  // map.drawPolyline({
  //   path: path,
  //   strokeColor: '#00000',
  //   strokeOpacity: 0.6,
  //   strokeWeight: 6
  // })
map.drawRoute({


  origin: [43.29611, 5.36993],
  destination: [43.28557, 5.35112],
  travelMode: 'walking',
  strokeColor: '#131540',
  strokeOpacity: 0.6,
  strokeWeight: 6
});
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);



  }
}


