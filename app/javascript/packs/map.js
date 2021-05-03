import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const mapElement = document.getElementById('map');

if (mapElement) {
  mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/karinmiriam/cko88xcgl4vju18pgby8zpan6'
  });

  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
  new mapboxgl.Marker()
    .setLngLat([ marker.lng, marker.lat ])
    .addTo(map);
  });

  if (markers.length === 0) {
    map.setZoom(0);
  } else if (markers.length === 1) {
    map.setZoom(12);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75})
  }

  map.addControl(new mapboxgl.NavigationControl());
}
