import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        
        body: Center(
          child: Column(
            
            children: [
              SelecTable(),
              SizedBox(height: 20),
              SelecTable(),
              SizedBox(height: 20),
              SelecTable(),
            ],
          ),
        ),
      ),
    );
  }
}

class SelecTable extends StatefulWidget {
  const SelecTable({super.key});

  @override
  State<SelecTable> createState() => _SelecTableState();
}

class _SelecTableState extends State<SelecTable> {
  String status = 'Not Selected';

  Color get textColor {
    if (status == 'Selected') {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  Color get backgroundColor {
    if (status == 'Selected') {
      return Colors.blue.shade500;
    } else {
      return Colors.blue.shade50;
    }
  }

  void changeSelection() {
    setState(() {
      if (status == 'Not Selected') {
        status = 'Selected';
      } else {
        status = 'Not Selected';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: changeSelection,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        child: Text(status, style: TextStyle(color: textColor)),
      ),
    );
  }
}
