import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HelloWorld"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}


class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
        textAlign: TextAlign.center,
        TextSpan(children: [
          TextSpan(text: '《定风波》', style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 30, fontWeight: FontWeight.bold)),
          TextSpan(text: '苏轼', style: TextStyle(color: Colors.blueGrey, fontSize: 22)),
          TextSpan(text: '\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。', style: TextStyle(color: Colors.black26, fontSize: 20)),
        ]));
  }
}
