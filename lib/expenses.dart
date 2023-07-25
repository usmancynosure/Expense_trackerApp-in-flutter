import 'package:expenses_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker_app/expenses.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => ExpensesState();
}

class ExpensesState extends State<Expenses> {
  //list of objects of expense
  final List<Expense> _registeres_Expenses = [
    Expense(
      title: "new shoes",
      amount: "69.99",
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
        title: "weekly groceries",
        amount: "16.53",
        date: DateTime.now(),
        category: Category.food)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text("chart"),
          Text("list of expenses"),
        ],
      ),
    );
  }
}
