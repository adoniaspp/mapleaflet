import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:map_leaflet/map_bloc.dart';
import 'input.dart';

class MapFlutter extends StatelessWidget {
  final bloc = BlocProvider.getBloc<MapBloc>();
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
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                            height: 180,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  color: Colors.blueAccent,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
        children: <Widget>[
          StreamBuilder(
            stream: bloc.outMap,
            builder: (context, snapshot) {
              print('${snapshot.data}');
              return FlutterMap(
                options: MapOptions(
                  center: LatLng(-1.449786, -48.488415),
                  zoom: 18.0,
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
              );
            }
          ),
          InputSearch(),
        ],
      ));
  }
}