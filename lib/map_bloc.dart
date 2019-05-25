import 'dart:async';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';

class MapBloc extends ChangeNotifier {
  String linhaOnibus = "";

  String get linha => this.linhaOnibus;

  LatLng pesquisaLinhasObibus(String linha) {
    notifyListeners();
  }

  void selecionarLinhaOnibus(LatLng a) {
    notifyListeners();
  }
}
