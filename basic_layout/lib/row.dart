import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Basic Layout'),
          backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Menyusun secara horizontal
        crossAxisAlignment: CrossAxisAlignment.center, // Menyusun secara vertikal
        children: <Widget>[
          const Text(
            'Hello, ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: Colors.yellow,
          ),
          const Text(
            'Flutter!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 20), // Jarak antar elemen
          ElevatedButton(
            onPressed: () {
              // Tindakan saat tombol ditekan
            },
            child: const Text('Click Me'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RowExample(),
    debugShowCheckedModeBanner: false, // Menghilangkan debug banner
  ));
}
