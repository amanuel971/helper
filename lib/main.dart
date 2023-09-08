import 'package:flutter/material.dart';
import 'package:helper/firstScreen.dart';
import 'package:helper/HomeScreen.dart';

//import 'package:helper/Symptom.dart';
import 'package:helper/welcome.dart';
import 'package:helper/MarkDownPage.dart';

void main() {
  runApp(MaterialApp(
    home: Welcome(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Navigation'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Tab 1 Content')),
              Center(child: Text('Tab 2 Content')),
              Center(child: Text('Tab 3 Content')),
            ],
          ),
        ),
      ),
    );
  }
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
          SizedBox(
            height: 20,
          ),
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
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const MarkDownPage(
                            mdName: 'symptom.md',
                            title: 'ምልክቶች',
                          );
                        },
                      ));
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
