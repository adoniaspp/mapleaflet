import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:map_leaflet/search.dart';
import 'package:map_leaflet/map_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';


class InputSearch extends StatelessWidget {

  InputSearch({
    Key key,
    this.mapController
  }) : super(key:key);

  MapController mapController;

  @override
  Widget build(BuildContext context) {
    final MapBloc bloc = BlocProvider.getBloc<MapBloc>();
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
            style: TextStyle(fontSize: 25,),
            decoration: InputDecoration(                              
                filled: true,
                fillColor: Colors.black12,
                hintText: "Linha de ônibus",
                suffixIcon: Icon(
                  Icons.directions_bus,
                  size: 35,
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
          mapController.move(LatLng(-1.450969, -48.494160), 16);
          //bloc.altCoord(LatLng(-1.444143, -48.593452));
        },
      ),
    );
  }
}
