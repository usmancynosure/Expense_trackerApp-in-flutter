import 'package:expenses_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker_app/widgets/expenses.dart';

import 'package:expenses_tracker_app/widgets/expenses_list/expenses_list.dart';

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
      amount: 69.993,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
        title: "flutter ",
        amount: 16.53,
        date: DateTime.now(),
        category: Category.work)
  ];

  void _openAddExpensesOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return const Text("Show Modle Sheet");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FLutter ExpenseTracker',
          style: TextStyle(color: Color.fromARGB(255, 239, 234, 234)),
          textAlign: TextAlign.end,
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpensesOverlay,
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("chart"),
          Expanded(
            child: ExpenseList(
              expenses: _registeres_Expenses,
            ),
          ),
        ],
      ),
    );
  }
}
