import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio Example'),
         backgroundColor: Colors.blue,
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9, // Rasio lebar dan tinggi
          child: Container(
            color: Colors.blueAccent,
            child: const Center(
              child: Text(
                '16:9 Aspect Ratio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AspectRatioExample(),
    debugShowCheckedModeBanner: false, // Menghilangkan debug banner
  ));
}
