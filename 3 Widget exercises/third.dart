import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: const Text("BMI Calculator")),
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Color.fromARGB(
            10, 192, 13, 236), // Set the background color of the Scaffold
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: 175,
                    height: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Icon(Icons.male),
                                Text('Male'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Card(
                  child: SizedBox(
                    width: 175,
                    height: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female),
                          Text('Female'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: Center(
                  child: Text('Female'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
