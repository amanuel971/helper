import 'package:flutter/material.dart';
import 'package:HELPER/HomeScreen.dart';
import 'package:HELPER/MarkDownPage.dart';
import 'package:HELPER/firstScreen.dart';
import 'package:HELPER/welcome.dart';

void main() {
  runApp(new MaterialApp(
    home: Welcome(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => firstScreen()),
                );
              },
              child: Text('የአደጋ ጊዜ ጥሪዎች(Emergency Time Calls)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      mdName: 'symptom.md',
                      title: 'ምልክቶች(Symptoms)',
                    );
                  },
                ));
              },
              child: Text('ምልክቶች(Symptoms)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('የመረጃ መመሪያ(Information Guide)'),
            ),
          ],
        ),
      ),
    );
  }
}
