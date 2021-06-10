import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:c4c/components/search.dart';
import 'package:c4c/views/foodpage.dart';
//preciso receber aqui os dados do usuário
// para poder calcular a distancia

class Foods extends StatefulWidget {
  @override
  _FoodsState createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  final _searchController = TextEditingController();

  //lista com os dados dos alimentos
  List _foodList = [
    {
      "date": DateTime.now(),
      "type": "Fruit",
      "food": "Banana",
      "quantity": 20,
      "distance": "20 km",
      "finality": "Human",
      "picture": null,
    },
    {
      "date": DateTime(2021, 9, 6),
      "type": "Fruit",
      "food": "Mango",
      "quantity": 1,
      "distance": "10 km",
      "finality": "Animal",
      "picture": null,
    },
    {
      "date": DateTime.now(),
      "type": "Vegetable",
      "food": "Potato",
      "quantity": 2,
      "distance": "2 km",
      "finality": "Fertilizer",
      "picture": null,
    }
  ];

  late Map<String, dynamic> _lastRemoved;
  late int _lastRemovedPos;
  late final String _search;

  //tem que implementar uma busca melhor kkk
  Future<List> _getFoods() async {
    //http.Response response;
    List r = [];
    if (_search == null || _search.isEmpty)
      return _foodList;
    // response = await http.get(
    //     "https://api.giphy.com/v1/gifs/trending?api_key=wusbFwUExpkztfjeMr3QRimPUc4kd1J9&limit=20&rating=G");
    else {
      for (int i = 0; i < _foodList.length; i++) {
        if (_foodList[i]["food"] == _search) {
          r.add(_foodList[i]);
        }
      }
      return r;
    }
    // response = await http.get(
    //     "https://api.giphy.com/v1/gifs/search?api_key=wusbFwUExpkztfjeMr3QRimPUc4kd1J9&q=$_search&limit=19&offset=$_offset&rating=G&lang=en");

    //return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    _readData().then((data) {
      setState(() {
        //_foodList = json.decode(data);
      });
    });
  }
  //estou ordenando com a data ja que ainda nao calculo a distancia
  //Nosso JSON:

  /*{
      "date",
      "quantity",
      "finality"
      "type",
      "food",
      "picture",
    }*/

  //A localização a gente tem que puxar do usuário

  Future<Null> _refresh() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _foodList.sort((a, b) {
        if (a["date"].isAfter(b["date"]))
          return 1;
        else if (b["date"].isAfter(a["date"]))
          return -1;
        else
          return 0;
      });
      _saveData();
    });

    return null;
  }

  Widget _defineIcon(String _finality) {
    if (_finality == "Human") {
      return Icon(Icons.person);
    } else if (_finality == "Animal") {
      return Icon(Icons.pets);
    } else
      return Icon(Icons.scatter_plot);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey,
            onPressed: () {
              //Aqui, eu tenho que passar uma lista com os nomes de todos os elementos existentes
              //Pq ai aparecem as sugestoes certas de acordo com o texto digitado
              showSearch(context: context, delegate: Search(["banana"]));
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20.0)),
          RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10.0),
              itemCount: _foodList.length,
              itemBuilder: buildItem,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) {
    return Card(
      child: ListTile(
        //title: Text("oi"),
        leading: _defineIcon(_foodList[index]["finality"]),
        title: Text(_foodList[index]["food"]),
        subtitle: Text(_foodList[index]["food"]),
        //trailing: Text(_foodList[index]["distance"]),
        trailing: Text("20 km"),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodPage(_foodList[index])));
        },
        //mouseCursor: MouseCursor.uncontrolled,
        //por algum motivo misterioso esta dando erro com finality
        //subtitle: Text(_foodList[index]["finality"]),
      ),
    );

    // Dismissible(
    //   key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
    //   background: Container(
    //     color: Colors.green,
    //     child: Align(
    //       alignment: Alignment(-0.9, 0.0),
    //       child: Icon(
    //         Icons.delete,
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    //   direction: DismissDirection.startToEnd,
    //   child: ListTile(
    //     //title: Text("oi"),
    //     title: Text(_foodList[index]["food"]),
    //     subtitle: Text(_foodList[index]["food"]),
    //     //por algum motivo misterioso esta dando erro com finality
    //     //subtitle: Text(_foodList[index]["finality"]),
    //   ),
    //   onDismissed: (direction) {},
    // );
  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  Future<File> _saveData() async {
    String data = json.encode(_foodList);

    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFile();

      return file.readAsString();
    } catch (e) {
      print("error");
      return "Error";
    }
  }
}
