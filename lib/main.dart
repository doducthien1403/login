import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.people_sharp,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Text("ĐĂNG NHẬP BẰNG TÀI KHOẢN"),
          TextField(
            decoration: InputDecoration(hintText: "Tên tài khoản"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Mật khẩu"),
          ),
        ],
      ),
    );
  }
}
