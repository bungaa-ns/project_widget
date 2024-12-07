import 'package:flutter/material.dart';

void main() => runApp(const Texts());

class Texts extends StatelessWidget {
  const Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Basic Widget'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: TextExamples(),
        ),
      ),
    );
  }
}

class TextExamples extends StatelessWidget {
  const TextExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Pusatkan di tengah layar
      crossAxisAlignment: CrossAxisAlignment.center, // Luruskan di tengah horizontal
      children: const [
        // Teks dasar
        Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 24, // Ukuran font
            fontWeight: FontWeight.bold, // Tebal
          ),
        ),
        
        SizedBox(height: 16), // Jarak antara teks
        
        // Teks dengan warna
        Text(
          'This is a colored text.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue, // Warna teks
          ),
        ),

        SizedBox(height: 16),

        // Teks dengan dekorasi
        Text(
          'Underlined and italic text',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.underline, // Garis bawah
            fontStyle: FontStyle.italic, // Miring
          ),
        ),

        SizedBox(height: 16),

        // Teks yang diatur rata
        Text(
          'This text is center-aligned.',
          textAlign: TextAlign.center, // Rata tengah
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
          ),
        ),

        SizedBox(height: 16),

        // Teks dengan shadow
        Text(
          'Text with Shadow',
          style: TextStyle(
            fontSize: 22,
            color: Colors.red,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0), // Posisi bayangan
                blurRadius: 3.0, // Radius blur
                color: Colors.grey, // Warna bayangan
              ),
            ],
          ),
        ),
      ],
    );
  }
}
