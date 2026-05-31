import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp
  (
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hobbies'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(40, 40, 40, 10),
                height: 110,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                
              ),
              child: Row(
               
                children: [
                  SizedBox(width: 30),
                  Icon(
                    Icons.travel_explore,
                  ),
                  SizedBox(width: 20),
                   Text('Travelling',style: TextStyle(color: Colors.white,
          
        ),)
                ],
              )
              
            ),
            Container(
                margin: EdgeInsets.fromLTRB(40, 40, 40, 10),
                height: 110,
              
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
               child: Row(
                  
                  children: [
                    SizedBox(width: 30),
                    Icon(Icons.skateboarding),
                    SizedBox(width: 20),
                    Text('Skating', style: TextStyle(color: Colors.white)),
                  ],
                )
            )
          ],
        ),
        
      ),
    )
    )
    );
}
