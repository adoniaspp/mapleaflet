import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';


class MapBloc extends ChangeNotifier {
  String linhaOnibus = "";

  String get linha => this.linhaOnibus;

  LatLng pesquisaLinhasObibus(String linha) {
      //TODO buscar linha de onibus e retornar a coordenada.
    return LatLng(1, 2);
  }

  List<Marker> retornarListaMarcadores(LatLng a) {
       //TODO retornar a lista de marcadores.
      return List<Marker>();
  }
}
