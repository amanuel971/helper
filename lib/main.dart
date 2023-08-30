import 'package:flutter/material.dart';
import 'package:helper/firstScreen.dart';
import 'package:helper/HomeScreen.dart';

import 'package:helper/SymptomScreen.dart';
import 'package:helper/welcome.dart';

void main() {
  runApp(MaterialApp(
    home: Welcome(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Home Page'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          )),
      body: Column(
        children: [
          Text(
            ' This HELPER is used to get information about emergency time helping for some body , and to get phone number to call emergency time  Government sectors.',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => firstScreen()),
                      );
                    },
                    child: Text('የአደጋ ጊዜ ጥሪዎች'),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SymptomScreen()),
                      );
                    },
                    child: Text('ምልክቶች'),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text('የመረጃ መመሪያ'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
