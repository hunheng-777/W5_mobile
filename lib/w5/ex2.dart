import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: const Column(
          children: [
            FavCard(),
            SizedBox(height: 10),
            FavCard(),
            SizedBox(height: 10),
            FavCard(),
          ],
        ),
      ),
    );
  }
}

class FavCard extends StatefulWidget {
  const FavCard({super.key});

  @override
  State<FavCard> createState() => _FavCardState();
}

class _FavCardState extends State<FavCard> {
  bool favCard = false;
  Color get iconColor {
    if (favCard ) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

  void changeFav() {
    setState(() {
      if (favCard == false) {
        favCard = true;
      } else {
        favCard = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'title',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10.0),
                Text('description'),
              ],
            ),
          ),
          IconButton(
            onPressed: () => {changeFav()},
            icon: Icon(Icons.favorite, color: iconColor),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MyCard());
