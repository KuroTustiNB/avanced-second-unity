import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);
  final fruits = const ['apple','banana','orange','pineapple', 'Strawnerry','watermelon'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('ListView Screen Type1'),
      ),
      body: ListView(
        children: [
          ...fruits.map(
            (fruit) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              title: Text(fruit),
            )
            ).toList()
        ],
      )
    );
  }
}