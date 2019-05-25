import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'input.dart';

class MapFlutter extends StatefulWidget {
  @override
  _MapFlutterState createState() => _MapFlutterState();
}

class _MapFlutterState extends State<MapFlutter> {
  MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  final listMarkers = <Marker>[
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
                showBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 180,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.pink[300],
                                height: 90,
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "454 - Onibus xpto",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "454",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ));
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
                showBottomSheet(
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
                showBottomSheet(
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
                showBottomSheet(
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
                showBottomSheet(
                  context: context,
                  builder: (context) => Container(),
                );
              },
            )))),
  ];
  @override
  Widget build(BuildContext context) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.brown[400],
              child: Icon(Icons.my_location,),
              onPressed: (){
                mapController.move(LatLng(-1.449786, -48.488415), 15);
              },
            ),
            body: Stack(children: <Widget>[
              FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  center: LatLng(-1.449786, -48.488415),
                  zoom: 15,
                  maxZoom: 20.0,
                  minZoom: 3.0,
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: ['a', 'b', 'c'],
                  ),
                  MarkerLayerOptions(
                    markers: listMarkers,
                  )
                ],
              ),
              InputSearch(mapController: mapController,),
            ]),
          );
        //});
  }
}
