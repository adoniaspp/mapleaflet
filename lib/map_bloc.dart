import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:latlong/latlong.dart';


class MapBloc extends BlocBase {

MapBloc();

//var _counterControler = StreamController().stream.asBroadcastStream();
var _mapController = BehaviorSubject<LatLng>.seeded(LatLng(-1.449786, -48.488415));

Stream<LatLng> get outMap => _mapController.stream;

Sink<LatLng> get inMap => _mapController.sink;

altCoord(LatLng a){
  inMap.add(a);
}

@override
  void dispose() {
    _mapController.close();
    super.dispose();
  }

}