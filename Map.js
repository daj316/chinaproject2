
window.onload = showMap;

function showMap() {

    var googleLatAndLong = new google.maps.LatLng(36, 105);
    var mapOptions = {
        zoom: 4,
        center: googleLatAndLong,
        mapTypeId: google.maps.MapTypeId.HYBRID
    };
    var mapDiv = document.getElementById("map");
    map = new google.maps.Map(mapDiv, mapOptions);


    var warFig = {
        lat: 38.6511983323,
        long: 116.279296875,
        artTitle: '<a href="Warrior Figurine.aspx">Warrior Figurine</a>',
        image: '<IMG BORDER="0" width="45" heigth="45" SRC="http://localhost:63267/assets/img/ChinaImages/08.jpg">'
    };

    scrollMapToPosition(warFig);

    }





function scrollMapToPosition(artifact) {
    var latitude = artifact.lat;
    var longitude = artifact.long;

    var latlong = new google.maps.LatLng(latitude, longitude);
    

    // add the new marker
    addMarker(map, latlong, artifact.artTitle, artifact.artTitle + " " + artifact.image);
}

function addMarker(map, latlong, title, content) {
    var markerOptions = {
        position: latlong,
        map: map,
        title: title,
        clickable: true
    };
    var marker = new google.maps.Marker(markerOptions);

    var infoWindowOptions = {
        content: content,
        position: latlong
    };

    var infoWindow = new google.maps.InfoWindow(infoWindowOptions);

    google.maps.event.addListener(marker, 'click', function () {
        infoWindow.open(map);
    });
}
