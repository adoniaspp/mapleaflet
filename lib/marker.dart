import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';


class Marcador{

  LatLng coordenada;
  String codigo;
  String descricao;

  Marcador(this.coordenada, this.codigo, this.descricao);

  Marker gerarMarcador() {
    return Marker(
        width: 50,
        height: 50,
        //point: LatLng(-1.449786, -48.488415),
        point: this.coordenada,
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
                                color: Colors.amber,
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
                                          this.descricao,
                                          //"454 - Onibus xpto",
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
                                      this.codigo,
                                      //"454",
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
            ))));
  }
}