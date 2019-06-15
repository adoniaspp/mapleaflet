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
                          height: 270,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.green[300],
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
                                          "631 - Marex x Ver-o-Peso",
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
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Tempo de chegada: 20 minutos",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Icon(Icons.departure_board),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.network(
                                    "https://cdn2.iconfinder.com/data/icons/fat-man/271/fat-man-action-1002-512.png",
                                    scale: 12,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Cadeira para pessoas obesas"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.accessible,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Rampa/Elevador para cadeirantes"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "http://www.inpi.gov.br/menu-servicos/patente/arquivos/freepikflaticon.comoldman.png/@@images/image.png",
                                    scale: 12,
                                    color: Colors.red,
                                  ),
                                  Text("Prioridades"),
                                ],
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
                    builder: (context) => Container(
                          height: 270,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.green[300],
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
                                          "632 - Marex x Felipe Patroni",
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
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Tempo de chegada: 10 minutos",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Icon(Icons.departure_board),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.network(
                                    "https://cdn2.iconfinder.com/data/icons/fat-man/271/fat-man-action-1002-512.png",
                                    scale: 12,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Cadeira para pessoas obesas"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.accessible,
                                    color: Colors.red,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Rampa/Elevador para cadeirantes"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "http://www.inpi.gov.br/menu-servicos/patente/arquivos/freepikflaticon.comoldman.png/@@images/image.png",
                                    scale: 12,
                                    color: Colors.red,
                                  ),
                                  Text("Prioridades"),
                                ],
                              )
                            ],
                          ),
                        ));
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
                    builder: (context) => Container(
                          height: 270,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.green[300],
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
                                          "634 - Marex x Arsenal",
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
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Tempo de chegada: 30 minutos",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Icon(Icons.departure_board),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.network(
                                    "https://cdn2.iconfinder.com/data/icons/fat-man/271/fat-man-action-1002-512.png",
                                    scale: 12,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Cadeira para pessoas obesas"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.accessible,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Rampa/Elevador para cadeirantes"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "http://www.inpi.gov.br/menu-servicos/patente/arquivos/freepikflaticon.comoldman.png/@@images/image.png",
                                    scale: 12,
                                    color: Colors.green,
                                  ),
                                  Text("Prioridades"),
                                ],
                              )
                            ],
                          ),
                        ));
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
                    builder: (context) => Container(
                          height: 270,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.green[300],
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
                                          "636 - Marex x Pres. Vargas",
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
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Tempo de chegada: 1 hora",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Icon(Icons.departure_board),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.network(
                                    "https://cdn2.iconfinder.com/data/icons/fat-man/271/fat-man-action-1002-512.png",
                                    scale: 12,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Cadeira para pessoas obesas"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.accessible,
                                    color: Colors.red,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Rampa/Elevador para cadeirantes"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "http://www.inpi.gov.br/menu-servicos/patente/arquivos/freepikflaticon.comoldman.png/@@images/image.png",
                                    scale: 12,
                                    color: Colors.red,
                                  ),
                                  Text("Prioridades"),
                                ],
                              )
                            ],
                          ),
                        ));
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
                    builder: (context) => Container(
                          height: 270,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.green[300],
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
                                          "639 - Pratinha x Shopping Castanheira",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Tempo de chegada: 1 hora",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Icon(Icons.departure_board),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.network(
                                    "https://cdn2.iconfinder.com/data/icons/fat-man/271/fat-man-action-1002-512.png",
                                    scale: 12,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Cadeira para pessoas obesas"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.accessible,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Rampa/Elevador para cadeirantes"),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "http://www.inpi.gov.br/menu-servicos/patente/arquivos/freepikflaticon.comoldman.png/@@images/image.png",
                                    scale: 12,
                                    color: Colors.green,
                                  ),
                                  Text("Prioridades"),
                                ],
                              )
                            ],
                          ),
                        ));
              },
            )))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown[400],
        child: Icon(
          Icons.my_location,
        ),
        onPressed: () {
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
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
            MarkerLayerOptions(
              markers: listMarkers,
            )
          ],
        ),
        InputSearch(
          mapController: mapController,
        ),
      ]),
    );
    //});
  }
}
