import 'package:flutter/material.dart';

import 'map.dart';

main() => runApp(LeafletMap());

class LeafletMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MapFlutter(),
    );
  }
}
