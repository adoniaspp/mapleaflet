import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:map_leaflet/map_bloc.dart';
import 'map.dart';

main() => runApp(LeafletMap());

class LeafletMap extends StatefulWidget {
  @override
  _LeafletMapState createState() => _LeafletMapState();
}

class _LeafletMapState extends State<LeafletMap> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapFlutter(),
    ),
      blocs: [
        Bloc((i) => MapBloc()),
      ],
    );
  }
}
