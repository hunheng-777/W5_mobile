import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    
                    Image.asset('assets/ex3/dart.png',
                      height: 150,
                      width: double.infinity,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Dart', 
                      ),
                    SizedBox(height:8),
                    Text('The best object language.'),
                    
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/ex3/firebase.png',
                      height: 150,
                      width: double.infinity,
                    ),
                    SizedBox(height: 8),
                    Text('Dart'),
                    SizedBox(height: 8),
                    Text('The best mobile library.'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/ex3/flutter.png',
                      height: 150,
                      width: double.infinity,
                    ),
                    
                    SizedBox(height: 8),
                    Text('Dart'),
                    SizedBox(height: 8),
                    Text('The best cloude database.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
