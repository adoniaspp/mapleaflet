import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:map_leaflet/search.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';


class InputSearch extends StatelessWidget {

  InputSearch({
    Key key,
    this.mapController
  }) : super(key:key);

  final MapController mapController;
  final TextEditingController _typeController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeController,
            style: TextStyle(fontSize: 20, color: Colors.blue),
            decoration: InputDecoration(                              
                filled: true,
                fillColor: Colors.white,
                hintText: "Linha de ônibus",
                suffixIcon: Icon(
                  Icons.directions_bus,
                  size: 35,
                  color: Colors.brown[400],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ))),
        suggestionsCallback: (pattern) async{
          return await pesquisaPalavra(pattern);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text(suggestion['codigo'].toString()),
            subtitle: Text(suggestion['descricao']),
          );
        },
        onSuggestionSelected: (suggestion) {
          if(suggestion['codigo'].toString() == "631"){
            mapController.move(LatLng(-1.450969, -48.494160), 16);
          this._typeController.text = suggestion['codigo'].toString() + " - " + suggestion['descricao'];
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
                                          suggestion['codigo'].toString() + " - " + suggestion['descricao'],
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
          }else if(suggestion['codigo'].toString() == "632"){
            mapController.move(LatLng(-1.451164, -48.486863), 16);
          this._typeController.text = suggestion['codigo'].toString() + " - " + suggestion['descricao'];
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
                                          suggestion['codigo'].toString() + " - " + suggestion['descricao'],
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
          }else if(suggestion['codigo'].toString() == "634"){
            mapController.move(LatLng(-1.446756, -48.487570), 16);
          this._typeController.text = suggestion['codigo'].toString() + " - " + suggestion['descricao'];
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
                                          suggestion['codigo'].toString() + " - " + suggestion['descricao'],
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

          }else if(suggestion['codigo'].toString() == "636"){
            mapController.move(LatLng(-1.450969, -48.494160), 16);
          this._typeController.text = suggestion['codigo'].toString() + " - " + suggestion['descricao'];
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
                                          suggestion['codigo'].toString() + " - " + suggestion['descricao'],
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
          }else if(suggestion['codigo'].toString() == "639"){
            mapController.move(LatLng(-1.444143, -48.493452), 16);
          this._typeController.text = suggestion['codigo'].toString() + " - " + suggestion['descricao'];
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
                                          suggestion['codigo'].toString() + " - " + suggestion['descricao'],
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
          }
          
        },
      ),
    );
  }
}
