import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 80),
              textTitle("ĐĂNG NHẬP BẰNG TÀI KHOẢN"),
              const SizedBox(height: 80),
              textField("Tên tài khoản", const Icon(Icons.email)),
              const SizedBox(height: 20),
              textField("Mật khẩu", const Icon(Icons.key)),
              const SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        print("Click button Quên mật khẩu");
                      },
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                          Text(
                            "Quên mật khẩu",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Click button Xác nhận");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      "Xác nhận",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(height: 50, color: Colors.black87),
              const SizedBox(height: 30),
              textTitle("ĐĂNG NHẬP BẰNG"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 50),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Text textTitle(String textTitle) {
  return Text(
    textTitle,
    style: const TextStyle(
        fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue),
  );
}

AppBar appBar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.people_sharp,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          print("Click Menu");
        },
        icon: const Icon(Icons.menu),
      ),
    ],
  );
}

TextField textField(String textValue, Icon iconValue) {
  return TextField(
    decoration: InputDecoration(
      prefixIcon: iconValue,
      hintText: textValue,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  );
}
