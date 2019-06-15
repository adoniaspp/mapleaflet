Future<List> pesquisaPalavra(String text) async{
  List a = [
    {'codigo': 631, 'descricao': 'Marex x Ver-o-Peso'},
    {'codigo': 632, 'descricao': 'Marex x Felipe Patroni'},
    {'codigo': 634, 'descricao': 'Marex x Arsenal'},
    {'codigo': 636, 'descricao': 'Marex x Pres. Vargas'},
    {'codigo': 639, 'descricao': 'Pratinha  x Shopping Castanheira'},
  ];
  List b = List();
  a.forEach((linha){
    var texto = linha['codigo'].toString() + linha['descricao'].toUpperCase().trim();
    if(texto.contains(text.toUpperCase().trim())){
      b.add(linha);
    }
  });
  return b;
  // b.forEach((text){
  //  print(text['descricao']+'\n');
  //});
  
}