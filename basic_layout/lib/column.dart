import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Basic Layout'),
       backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Menyusun secara vertikal
        crossAxisAlignment: CrossAxisAlignment.center, // Menyusun secara horizontal
        children: <Widget>[
          const Text(
            'Welcome to Flutter!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          const Icon(
            Icons.flutter_dash,
            size: 100,
            color: Colors.blue,
          ),
          const SizedBox(height: 20), // Jarak antar elemen
          ElevatedButton(
            onPressed: () {
              // Tindakan saat tombol ditekan
            },
            child: const Text('Press Me'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ColumnExample(),
    debugShowCheckedModeBanner: false,
  ));
}
