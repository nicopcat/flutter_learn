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
        CircleAvatarWidget(),
        PictureWidget(),
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
        ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.send), label: const Text('发送'))
      ],
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.asset(
          'image/blob_reach.png',
          alignment: Alignment.topCenter,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class CircleAvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
        child: Container(alignment: Alignment(0, .5), width: 200, height: 200, child: Text("兵长利威尔")),
      ),
    );
  }
}
