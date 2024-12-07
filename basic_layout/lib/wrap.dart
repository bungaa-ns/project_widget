import 'package:flutter/material.dart';

void main() {
  runApp(WrapExample());
}

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap Basic Layout'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 16.0, // Jarak horizontal antar elemen
            runSpacing: 16.0, // Jarak vertikal antar elemen
            children: [
              // Lingkaran 1
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle, // Bentuk lingkaran
                ),
              ),
              // Lingkaran 2
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle, // Bentuk lingkaran
                ),
              ),
              // Lingkaran 3
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle, // Bentuk lingkaran
                ),
              ),
              // Lingkaran 4
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle, // Bentuk lingkaran
                ),
              ),
              // Lingkaran 5
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle, // Bentuk lingkaran
                ),
              ),
              // Lingkaran 6
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.circle, // Bentuk lingkaran
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
