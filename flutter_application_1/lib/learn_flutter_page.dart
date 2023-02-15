import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Leartn Flutter"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint("Action");
                },
                icon: const Icon(Icons.safety_check))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/lunafreya.jpg"),
              Image.asset("images/lunafreya.jpg"),
              Image.asset("images/lunafreya.jpg"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.green,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "text is a text widget",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined Button');
                },
                child: const Text('Outlined Button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('Text Button');
                },
                child: const Text('Text Button'),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('This is the row');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.yellow,
                    ),
                    Text("row"),
                    Icon(
                      Icons.abc,
                      color: Color.fromARGB(255, 251, 0, 205),
                    ),
                  ],
                ),
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                },
              ),
              Checkbox(
                  value: isCheckbox,
                  onChanged: (bool? newBool) {
                    setState(() {
                      isCheckbox = newBool;
                    });
                  }),
            ],
          ),
        ));
  }
}
