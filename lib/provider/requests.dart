import 'dart:math';

import 'package:flutter/material.dart';
import 'package:c4c/data/dummy_requests.dart';
import 'package:c4c/models/request.dart';

class RequestsProvider with ChangeNotifier {
  final Map<String, Request> _items = {...DUMMY_REQUESTS};

  List<Request> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Request byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Request request) {
    if (request == null) {
      return;
    }
    //Só adiciono se o usuário não existir
    if (request.id != null &&
        request.id.trim().isNotEmpty &&
        !_items.containsKey(request.id)) {
      _items.update(
        request.id,
        (_) => Request(
          id: request.id,
          date: request.date,
          requester: request.requester,
          food: request.food,
          quantity: request.quantity,
        ),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Request(
          id: id,
          date: request.date,
          requester: request.requester,
          food: request.food,
          quantity: request.quantity,
        ),
      );
    }
    notifyListeners();
  }

  void remove(Request request) {
    if (request != null && request.id != null) {
      _items.remove(request.id);
    }
  }
}
