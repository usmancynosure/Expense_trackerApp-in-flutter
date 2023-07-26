import 'package:expenses_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExpensesItem extends StatelessWidget {
  final Expense expense;
  const ExpensesItem({required this.expense, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 29,
          vertical: 19,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(expense.title),
            const SizedBox(
              height: 06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '\$${expense.amount.toStringAsFixed(2)}',
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(
                      width: 9,
                    ),
                    Text(expense.formattedDate),
                  ],
                ),

                //use the another row as to cat, date on the left side
              ],
            ),
          ],
        ),
      ),
    );
  }
}
