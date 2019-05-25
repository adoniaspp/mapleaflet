import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:map_leaflet/search.dart';
import 'package:map_leaflet/map_bloc.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';


class InputSearch extends StatelessWidget {

  InputSearch({
    Key key,
    this.mapController
  }) : super(key:key);

  MapController mapController;
  final TextEditingController _typeController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeController,
            style: TextStyle(fontSize: 25, color: Colors.blue),
            decoration: InputDecoration(                              
                filled: true,
                fillColor: Colors.white,
                hintText: "Linha de ônibus",
                suffixIcon: Icon(
                  Icons.directions_bus,
                  size: 35,
                  color: Colors.blue,
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
          this._typeController.text = suggestion['codigo'].toString() + " - " + suggestion['descricao'];
        },
      ),
    );
  }
}
