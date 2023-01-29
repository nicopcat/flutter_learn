import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hellow',
        home: Scaffold(
          appBar: AppBar(title: Text('标题')),
          body: ContentWidget(),
        ));
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextFieldDemo(),
        SizedBox(
          height: 20,
        ),
        ButtonWidgets(),
      ],
    );
  }
}

class ButtonWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.send), label: const Text('发送'))
      ],
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            labelText: '姓名',
            hintText: '请输入姓名',
          ),
          onSubmitted: (value) {
            print("onSubmitted:$value");
          },
        ),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.numbers),
            labelText: '年龄',
            hintText: '请输入年龄',
          ),
          onSubmitted: (value) {
            print("onSubmitted:$value");
          },
        ),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.pets),
            labelText: '宠物',
            hintText: '请输入宠物名',
          ),
          onSubmitted: (value) {
            print("onSubmitted:$value");
          },
        ),
      ],
    );
  }
}
