import 'package:flutter/material.dart';
import 'package:flutter_application_1/learn_flutter_page.dart';
// import 'package:flutter_application_1/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutterPage();
              },
            ),
          );
        },
        child: const Text('learn Flutter'),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Center(
  //     child: ElevatedButton(
  //       onPressed: () {
  //         Navigator.of(context).push(
  //           MaterialPageRoute(
  //             builder: (BuildContext context) {
  //               return const LoginPage();
  //             },
  //           ),
  //         );
  //       },
  //       child: const Text('learn Flutmmmmmmmmmmmmmmmmmmmmmmter'),
  //     ),
  //   );
  // }
}
