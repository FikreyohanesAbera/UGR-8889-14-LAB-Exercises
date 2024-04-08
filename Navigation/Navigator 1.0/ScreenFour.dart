import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Four"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
