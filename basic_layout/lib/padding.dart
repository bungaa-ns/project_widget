import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Example'),
         backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Padding di seluruh sisi
        child: Container(
          color: Colors.blueAccent,
          alignment: Alignment.center,
          child: const Text(
            'Hello, Padding!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PaddingExample(),
    debugShowCheckedModeBanner: false, // Menghilangkan debug banner
  ));
}
