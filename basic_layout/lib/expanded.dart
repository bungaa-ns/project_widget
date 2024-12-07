import 'package:flutter/material.dart';

void main() {
  runApp(const ExpandedExample());
} 

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row Expanded Example'),
          backgroundColor: Colors.blue, // Mengatur warna biru pada AppBar
          elevation: 10, // Menambahkan bayangan pada AppBar
        ),
        body: Column(
          children: [
            // Row widget dengan Expanded untuk teks yang fleksibel
            Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue, // Warna biru pada ikon panah
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue[50], // Memberikan warna biru terang pada area teks
                      child: const Text(
                        'List Checklist',
                        style: TextStyle(fontSize: 16, color: Colors.blue), // Teks biru
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.check,
                  color: Colors.blue, // Warna biru pada ikon centang
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
