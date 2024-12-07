import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Basic Layout'),
         backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            subtitle: const Text('Go to home page'),
            onTap: () {
              // Tindakan saat item ditekan
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            subtitle: const Text('Go to settings'),
            onTap: () {
              // Tindakan saat item ditekan
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            subtitle: const Text('Check notifications'),
            onTap: () {
              // Tindakan saat item ditekan
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            subtitle: const Text('View profile'),
            onTap: () {
              // Tindakan saat item ditekan
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ListViewExample(),
    debugShowCheckedModeBanner: false, // Menghilangkan debug banner
  ));
}
