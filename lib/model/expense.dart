import 'package:uuid/uuid.dart';

//set uuid globelly
const uuid = Uuid();

//use enum to access the category
enum Category { food, travel, work, leisure }

class Expense {
  final String id;
  final String title;
  final String amount;
  final DateTime date;
  final Category category;

  //constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
}
