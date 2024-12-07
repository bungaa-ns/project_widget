import 'package:flutter/material.dart';

void main() {
  runApp(StackExample());
}

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack-Basic Layout'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center, // Menyelaraskan elemen di tengah
            children: [
              // Ikon Keranjang
              Icon(
                Icons.shopping_cart,
                size: 100, // Ukuran ikon keranjang
                color: Colors.black,
              ),
              // Notifikasi Angka
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(
                    minWidth: 24,
                    minHeight: 24,
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
