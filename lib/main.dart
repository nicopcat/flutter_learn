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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: LoginWidget(),
        )
      ],
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State {
  final registerFormKey = GlobalKey<FormState>();

  String phoneNumber = '';
  String username = '';
  String password = '';

  void logginAction() {
    registerFormKey.currentState?.save();
    // registerFormKey.currentState?.validate();

    Map<String, dynamic> parameters = {};
    parameters['username'] = username;
    parameters['password'] = password;
    parameters['phoneNumber'] = phoneNumber;
    print(parameters);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
        key: registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                decoration: InputDecoration(icon: Icon(Icons.people), labelText: '用户名'),
                onSaved: (e) {
                  e ??= '';
                  username = e;
                },
                validator: (v) {
                  if (v == null || v.length == 0) {
                    return '请输入用户名';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction
                // onChanged: (v) {
                //   setState(() {
                //     username = v;
                //   });
                // },
                ),
            TextFormField(
                decoration: InputDecoration(icon: Icon(Icons.phone), labelText: '手机号'),
                onSaved: (e) {
                  e ??= '';
                  phoneNumber = e;
                }),
            TextFormField(
              decoration: InputDecoration(icon: Icon(Icons.lock), labelText: '密码'),
              obscureText: true,
              onChanged: (v) {
                setState(() {
                  password = v;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              label: Text('提交'),
              onPressed: () {
                logginAction();
              },
              icon: Icon(Icons.send),
            )
          ],
        ));
  }
}
