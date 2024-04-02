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
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  color: Colors.purple[900],
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
                                const Icon(
                                  Icons.male,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const Text(
                                  'Male',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.purple[900],
                  child: SizedBox(
                    width: 175,
                    height: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.female,
                            size: 40,
                            color: Colors.white,
                          ),
                          const Text(
                            'Female',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              height: 200,
              child: Card(
                // color: Colors.black,
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Height",
                        ),
                        const Text("176cm"),
                        Slider(value: 0.5, onChanged: (value) {})
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.purple[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            const Text('Weight'),
                            const Text("60"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(500),
                                    child: Container(
                                      color: Colors.purpleAccent,
                                      child: const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: const Icon(Icons.add),
                                      ),
                                    )),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(500),
                                    child: Container(
                                      color: Colors.purpleAccent,
                                      child: const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.remove),
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.purple[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            const Text('HEIGHT'),
                            const Text("23"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(500),
                                    child: Container(
                                      color: Colors.purpleAccent,
                                      child: const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.add),
                                      ),
                                    )),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(500),
                                  child: Container(
                                    color: Colors.purpleAccent,
                                    child: const Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(Icons.remove),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text(
                  "Calculate",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
