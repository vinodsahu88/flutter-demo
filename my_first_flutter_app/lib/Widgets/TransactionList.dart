import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/Transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => TransactionListWidget();
}

class TransactionListWidget extends State<TransactionList> {
  final List<Transaction> transaction = [
    Transaction(id: "1", title: "Grocerry", price: 20.66, time: DateTime.now()),
    Transaction(id: "2", title: "Recharge", price: 20.66, time: DateTime.now()),
    Transaction(id: "3", title: "Fuel", price: 39.66, time: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transaction.map((e) {
        return Card(
          child: Row(
            children: [
              Container(
                color: Colors.amberAccent,
                margin: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '\$${e.price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    e.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    DateFormat().format(e.time),
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
