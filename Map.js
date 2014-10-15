
window.onload =init;

var artifact = {
    artTitle: '<a href="Warrior Figurine.aspx">Warrior Figurine</a>',
    image: '<IMG BORDER="0" width="45" heigth="45" SRC="http://localhost:63267/assets/img/ChinaImages/08.jpg">',
    found_lat: 38.6511983323,
    found_long: 116.279296875,
    created_lat: 40,
    created_long: 118,
    curated_lat: 36,
    curated_long: 114,
};

var artArray = [];

artArray.push(artifact);



function init() {
    showMap();

    var found = document.getElementById("found_button");
    found.onclick = foundPins;

    var created = document.getElementById("created_button");
    created.onclick = createdPins;

    var curated = document.getElementById("curated_button");
    curated.onclick = curatedPins;
}

function showMap() {

    var googleLatAndLong = new google.maps.LatLng(36, 105);
    var mapOptions = {
        zoom: 4,
        center: googleLatAndLong,
        mapTypeId: google.maps.MapTypeId.HYBRID
    };
    var mapDiv = document.getElementById("map");
    map = new google.maps.Map(mapDiv, mapOptions);

    foundPins;
}

function foundPins() {
    for (i = 0; i < artArray.length; i++) {
        var latitude = artArray[i].found_lat;
        var longitude = artArray[i].found_long;

        var latlong = new google.maps.LatLng(latitude, longitude);

        // add the new marker
        addMarker(map, latlong, artArray.artTitle, artArray.artTitle + " " + artArray.image);
    }
    
}

function createdPins() {
    var latitude = artifact.created_lat;
    var longitude = artifact.created_long;

    var latlong = new google.maps.LatLng(latitude, longitude);

    // add the new marker
    addMarker(map, latlong, artifact.artTitle, artifact.artTitle + " " + artifact.image);
}

function curatedPins() {
    var latitude = artifact.curated_lat;
    var longitude = artifact.curated_long;

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
