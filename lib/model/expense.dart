import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

final formatter = DateFormat.yMd();

//set uuid globelly
const uuid = Uuid();

//use enum to access the category
enum Category { food, travel, work, leisure }

const categoryIcons = {
  //map
  Category.food: Icons.fastfood,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.work,
  Category.leisure: Icons.local_movies,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  //constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  final List<Expense> expenses;
  final Category category;
  ExpenseBucket({required this.expenses, required this.category});

  //user define constructor
  ExpenseBucket.forCategory(List<Expense> allexpenses, this.category)
      //used for to for loop the all index and reture true for certain meet
      : expenses = allexpenses
            .where((expense) => expense.category == category)
            .toList();

  //total expense
  double get totalExpenses {
    double total = 0;
    for (var expense in expenses) {
      total += expense.amount;
    }
    return total;
  }
}
