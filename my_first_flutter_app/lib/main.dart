import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/Widgets/TransactionList.dart';
import 'Widgets/add_expences.dart';

void main(List<String> args) {
  runApp(HomeWidget());
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Expances'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(6.0),
                child: const Card(
                  elevation: 5,
                  color: Color.fromARGB(255, 160, 19, 19),
                  child: Text(
                    'Spsce For Chart',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const AddExpences(),
              const TransactionList(),
            ],
          )),
    );
  }
}
