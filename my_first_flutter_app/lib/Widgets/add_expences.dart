import 'package:flutter/material.dart';

class AddExpences extends StatelessWidget {
  const AddExpences({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final priceController = TextEditingController();
    final Function addExpencesCallback;
    AddExpences({this.addExpencesCallback});

    return Container(
        color: Colors.amberAccent,
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Title"),
                controller: titleController,
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Title"),
                controller: priceController,
              ),
              const TextButton(
                onPressed: addExpencesCallback(
                    titleController.text, priceController.text),
                child: Text('Add Transaction'),
              )
            ],
          ),
        ));
  }
}
