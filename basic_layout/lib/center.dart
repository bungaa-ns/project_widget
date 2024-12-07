import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Example'),
         backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          // Padding untuk memberi jarak di dalam container
          padding: const EdgeInsets.all(20),
          // Dekorasi dengan rounded corners
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Warna latar belakang
            borderRadius: BorderRadius.circular(20), // Sudut melengkung
          ),
          child: const Text(
            'Centered Text',
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
    home: CenterExample(),
    debugShowCheckedModeBanner: false, // Menghilangkan debug banner
  ));
}
