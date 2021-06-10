import 'package:c4c/models/user.dart';
import 'package:c4c/models/food.dart';

class Request {
  final String id;
  final DateTime date;
  final User donor;
  final User requester;
  final Food food;
  final int quantity;

  const Request({
    required this.id,
    required this.date,
    required this.donor,
    required this.requester,
    required this.food,
    required this.quantity,
  });
}
