import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:latlong/latlong.dart';


class MapBloc extends BlocBase {

//var _mapController = PublishSubject<int>();

MapBloc(){
  //inMap.add(1);
}

var _mapController = BehaviorSubject<double>();
//Stream<LatLng> get outMap => _mapController.stream;
Stream<double> get outMap => _mapController.stream;
//Sink<LatLng> get inMap => _mapController.sink;
Sink<double> get inMap => _mapController.sink;

altCoord(LatLng a){
  inMap.add(10.0);
}

@override
  void dispose() {
    super.dispose();
        _mapController.close();
  }

}