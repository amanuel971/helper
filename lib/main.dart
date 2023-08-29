import 'package:flutter/material.dart';
import 'package:helper/FireScreen.dart';
import 'package:helper/informationScreen.dart';
import 'package:helper/symptoms.dart';
import 'welcome.dart';

void main() {
  runApp(MaterialApp(
    home: Welcome(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(133, 0, 0, 0),
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Text(
            ' This HELPER is used to get information about emergency time helping for some body , and to get phone number to call emergency time  Government sectors.',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FireScreen()),
                      );
                    },
                    child: Text('የእሳት አደጋ ጥሪዎች'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('የአምቡላንስ ጥሪ'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('የፖሊስ ጣቢያ ጥሪዎች'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('የውሃ ልማት ጥሪዎች'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('የethiotelecom ጥሪዎች'),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => symptoms()),
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
                        MaterialPageRoute(
                            builder: (context) => informationScreen()),
                      );
                    },
                    child: Text(' ለ ልብ ድካም'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ለ ደም ማነስ'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ለ ደም ግፊት'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ለ ደም ብዛት'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ለ ሚጥል በሽታ'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ለ ስኳር በሽታ'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ለ ሆድ  ህመም'),
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
