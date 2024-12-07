import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Basic Layout'),
          backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 8.0, // Jarak antar kolom
          mainAxisSpacing: 8.0, // Jarak antar baris
          childAspectRatio: 1.0, // Rasio tinggi dan lebar setiap item
        ),
        itemCount: 8, // Jumlah item dalam grid
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Item $index',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: GridViewExample(),
    debugShowCheckedModeBanner: false, // Menghilangkan debug banner
  ));
}
