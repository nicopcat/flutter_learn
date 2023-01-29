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
        FormDemo()
      ],
    );
  }
}

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          decoration: InputDecoration(icon: Icon(Icons.people), labelText: '用户名'),
        ),
        TextFormField(
          decoration: InputDecoration(icon: Icon(Icons.phone), labelText: '手机号'),
        )
      ],
    ));
  }
}
