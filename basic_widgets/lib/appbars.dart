import 'package:flutter/material.dart';

class CustomAppBarExample extends StatelessWidget {
  const CustomAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Tindakan saat ikon notifikasi ditekan
            },
          ),
        ],
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            // Tindakan saat ikon menu ditekan
          },
          icon: const Icon(Icons.menu),
        ),
       
      ),
      body: const Center(
        child: Text(
          'Body',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
