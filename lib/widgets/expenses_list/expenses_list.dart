//this class is excepting the list of Expenses from expenses class

import 'package:expenses_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:expenses_tracker_app/widgets/expenses_list/expenses_items.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;
  const ExpenseList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpensesItem(
        expense: expenses[index],
      ),
    );
  }
}
