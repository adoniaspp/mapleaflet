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
    var listMarkers = <Marker>[
      Marker(
          width: 50,
          height: 50,
          point: LatLng(-1.449786, -48.488415),
          builder: (context) => (Container(
                  child: GestureDetector(
                child: Icon(
                  Icons.directions_bus,
                  size: 50,
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
              )))),
      Marker(
          width: 50,
          height: 50,
          point: LatLng(-1.451164, -48.486863),
          builder: (context) => (Container(
                  child: GestureDetector(
                child: Icon(
                  Icons.directions_bus,
                  size: 50,
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
              )))),
      Marker(
          width: 50,
          height: 50,
          point: LatLng(-1.446756, -48.487570),
          builder: (context) => (Container(
                  child: GestureDetector(
                child: Icon(
                  Icons.directions_bus,
                  size: 50,
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
              )))),
      Marker(
          width: 50,
          height: 50,
          point: LatLng(-1.450969, -48.494160),
          builder: (context) => (Container(
                  child: GestureDetector(
                child: Icon(
                  Icons.directions_bus,
                  size: 50,
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
              )))),
      Marker(
          width: 50,
          height: 50,
          point: LatLng(-1.444143, -48.493452),
          builder: (context) => (Container(
                  child: GestureDetector(
                child: Icon(
                  Icons.directions_bus,
                  size: 50,
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
              )))),
    ];
    return MaterialApp(
      home: Scaffold(
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(-1.449786, -48.488415),
            zoom: 18.0,
            maxZoom: 20.0,
            minZoom: 3.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
            MarkerLayerOptions(
              markers: listMarkers,
            )
          ],
        ),
      ),
    );
  }
}
