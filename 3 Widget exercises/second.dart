import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("BMI CALCULATOR"),
          ),
        ),
        backgroundColor: Colors.purple,
        body: Container(
          child: Column(children: [
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.abc,
                      ),
                      const Text("Male")
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.abc,
                      ),
                      const Text("Male")
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Height",
                ),
                Text("176cm"),
                // Slider(
                //   value: 0,
                //   onChanged: {},
                // )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
