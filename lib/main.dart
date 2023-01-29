import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hellow',
        home: Scaffold(
          appBar: AppBar(title: Text('标题')),
          body: ButtonWidgets(),
        ));
  }
}

class ButtonWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              print('按了一下ElevatedButton');
            },
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.redAccent)),
            child: const Text('ElevatedButton')),
        TextButton(
            onPressed: () {
              print('TextButton');
            },
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.redAccent)),
            child: const Text('TextButton')),
        OutlinedButton(
            onPressed: () {
              print('OutlineButton');
            },
            child: const Text('OutlineButton')),
        IconButton(
            onPressed: () {
              print('IconButton');
            },
            icon: const Icon(Icons.add)),
        ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.send), label: const Text('发生'))
      ],
    );
  }
}
