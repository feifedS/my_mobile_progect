import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
// import 'package:validators/validators.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: const Text(
                  'Регистрация',
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
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First Name",
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 400.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Last Name",
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
              margin: const EdgeInsets.all(10.0),
              width: 400.0,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.all(10.0),
            //   width: 400.0,
            //   child: const TextField(
            //     obscureText: true,
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       labelText: 'Email',
            //     ),
            //   ),
            //   validator: (value) {
            //     if (value.isEmpty ||
            //         !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
            //             .hasMatch(value)) {
            //       return "Enter Correct Email Address";
            //     } else {
            //       return null;
            //     }
            //   },
            // ),
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
                  child: const Text('Зарегистрироваться'),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
