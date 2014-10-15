
window.onload =init;

var artifact = {
    artTitle: '<a href="Warrior Figurine.html">Warrior Figurine</a>',
    image: '<IMG BORDER="0" width="45" heigth="45" SRC="http://localhost:6200/assets/img/ChinaImages/08.jpg">',
    found_lat: 38.6511983323,
    found_long: 116.279296875,
    created_lat: 40,
    created_long: 118,
    curated_lat: 36,
    curated_long: 114,
};

var artArray = [];

artArray.push(artifact);

var markerArray = [];



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

    foundPins();
}

function foundPins() {
    deleteMarkers();

    for (i = 0; i < artArray.length; i++) {
        var latitude = artArray[i].found_lat;
        var longitude = artArray[i].found_long;

        var latlong = new google.maps.LatLng(latitude, longitude);

        // add the new marker
        addMarker(map, latlong, artArray.artTitle, artArray[i].artTitle + " " + artArray[i].image);

    }
    
}

function createdPins() {
    deleteMarkers();

    for (i = 0; i < artArray.length; i++) {
        var latitude = artArray[i].created_lat;
        var longitude = artArray[i].created_long;

        var latlong = new google.maps.LatLng(latitude, longitude);

        // add the new marker
        addMarker(map, latlong, artArray[i].artTitle, artArray[i].artTitle + " " + artArray[i].image);
    }
}

function curatedPins() {
    deleteMarkers();

    for (i = 0; i < artArray.length; i++) {
        var latitude = artArray[i].curated_lat;
        var longitude = artArray[i].curated_long;

        var latlong = new google.maps.LatLng(latitude, longitude);

        // add the new marker
        addMarker(map, latlong, artArray[i].artTitle, artArray[i].artTitle + " " + artArray[i].image);
    }
}

function addMarker(map, latlong, title, content) {
    var markerOptions = {
        position: latlong,
        map: map,
        title: title,
        clickable: true
    };
    var marker = new google.maps.Marker(markerOptions);

    markerArray.push(marker);

    var infoWindowOptions = {
        content: content,
        position: latlong
    };

    var infoWindow = new google.maps.InfoWindow(infoWindowOptions);

    google.maps.event.addListener(marker, 'mouseover', function () {
        infoWindow.open(map);
    });

    google.maps.event.addListener(map, 'mousemove', function () {
        infoWindow.close();
    });
}


// Sets the map on all markers in the array.
function setAllMap(map) {
    for (var i = 0; i < markerArray.length; i++) {
        markerArray[i].setMap(map);
    }
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkers() {
    setAllMap(null);
}

// Deletes all markers in the array by removing references to them.
function deleteMarkers() {
    clearMarkers();
    markers = [];
}