import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

main() => runApp(LeafletMap());

class LeafletMap extends StatefulWidget {
  @override
  _LeafletMapState createState() => _LeafletMapState();
}

class _LeafletMapState extends State<LeafletMap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlutterMap(
        options: MapOptions(
          center: LatLng(51.5, -0.09),
          zoom: 13.0
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.tiles.mapbox.com/v4/"
                "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
            additionalOptions: {
              'accessToken': 'pk.eyJ1IjoiYWRvbmlhc3BwIiwiYSI6ImNqdnEwaXkwMTAyZnAzeW54djVrOTJ6OGYifQ.TeYg1aiP3eYPAp5yzpP0VA',
              'id': 'mapbox.streets',
            },
          ),
        ],
      ),
      ),
    );
  }
}