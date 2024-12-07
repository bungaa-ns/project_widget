import 'package:flutter/material.dart';

void main() {
  runApp( SizedBoxExample());
}

class  SizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Binar - SizedBox'),
          backgroundColor: Colors.blue, // Warna AppBar biru
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Description Section
              Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black, // Warna teks hitam
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700], // Warna teks abu-abu gelap
                ),
              ),
              SizedBox(height: 20),
              // Size and Treatment Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Size Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black, // Warna teks hitam
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Height 120 cm',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        Text(
                          'Width 80 cm',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  // Treatment Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Treatment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black, // Warna teks hitam
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Jati Wood, Canvas',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        Text(
                          'Amazing Love',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
