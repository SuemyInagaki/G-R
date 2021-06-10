import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  late String selectedResult;
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  final List<String> listExample;
  Search(this.listExample);
  List<String> recentList = ["banana", "tomato"];

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList
        : suggestionList
            .addAll(listExample.where((element) => element.contains(query)));

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              suggestionList[index],
            ),
            onTap: () {
              selectedResult = suggestionList[index];
              //Aqui, eu so mostro o resultado
              //Mas teoricamente faz a busca no banco
              //E mostra todos os elementos pertencentes a busca
              //deveria enviar a lista resultante para "available.dart"
              //isso nao esta implementado
              showResults(context);
            },
          );
        });
  }
}
