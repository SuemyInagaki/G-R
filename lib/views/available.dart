import 'package:c4c/models/user.dart';
import 'package:flutter/material.dart';

import 'package:c4c/views/foodpage.dart';
import 'package:provider/provider.dart';
import 'package:c4c/provider/foods.dart' as food;

class FoodsAvailable extends StatefulWidget {
  @override
  _FoodsAvailableState createState() => _FoodsAvailableState(this._user);
  late final User _user;
  FoodsAvailable(this._user);
}

class _FoodsAvailableState extends State<FoodsAvailable> {
  late final User _user;
  _FoodsAvailableState(this._user);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final food.Foods _foodList = Provider.of(context);

    Widget buildItem(BuildContext context, int index) {
      int _dist = index * 10 - index;
      return Card(
        child: ListTile(
          subtitle: Text(_foodList.byIndex(index).type),
          title: Text(_foodList.byIndex(index).name),
          trailing: Text("$_dist km"),
          onTap: () {
            final _foodData = _foodList.byIndex(index);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodPage(_foodData, _user, index)));
          },
        ),
      );
    }

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
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 10.0),
          itemCount: _foodList.count,
          itemBuilder: buildItem,
        ),
      ),
    );
  }
}
