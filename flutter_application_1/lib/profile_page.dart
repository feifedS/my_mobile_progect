import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
// import 'package:flutter_application_1/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LoginPage();
              },
            ),
          );
        },
        child: const Text('Логин'),
      ),
    );
  }
}

  //  return Scaffold(
//         body: SingleChildScrollView(
    
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (BuildContext context) {
//                     return const LoginPage();
//                   },
//                 ),
//               );
//             },
//             child: const Text('Text Button'),
//           ),
//           ElevatedButton(
//             PlaceholderAlignment.top,
//             onPressed: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (BuildContext context) {
//                     return const LoginPage();
//                   },
//                 ),
//               );
//             },
//             child: const Text('learn Flutmmmmmmter'),
//           ),
//         ],
//       ),
//     ));
//   }
// }
