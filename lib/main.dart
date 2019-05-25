import 'package:flutter/material.dart';
import 'package:map_leaflet/map_bloc.dart';
import 'package:provider/provider.dart';

import 'map.dart';

main() => runApp(LeafletMap());

class LeafletMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => MapBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MapFlutter(),
      ),
    );
  }
}
