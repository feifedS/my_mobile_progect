import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/reg_page.dart';
// import 'package:flutter_application_1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: const Text(
                  'ЛОГИН',
                  style: TextStyle(fontSize: 50.0),
                )),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 400.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 400.0,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                width: 400, // <-- Your width
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const RootPage();
                        },
                      ),
                    );
                  },
                  child: const Text('Войти'),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              margin: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                width: 400, // <-- Your width
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const RegPage();
                        },
                      ),
                    );
                  },
                  child: const Text('Зарегистрироваться'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// body: TextField(
//         obscureText: true,
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           labelText: 'Password',
//         ),
//       ),