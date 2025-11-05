import 'package:flutter/material.dart';

class TransactionTabs extends StatelessWidget {
  const TransactionTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Categories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "View All",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
