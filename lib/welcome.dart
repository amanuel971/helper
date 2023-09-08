import 'package:flutter/material.dart';
import 'package:helper/main.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Welcome To Helper app'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('information'),
              onTap: () {
                // Handle navigation for Item 1
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('suport'),
              onTap: () {
                // Handle navigation for Item 2
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/ic_launcher.png',
            width: 5000000,
            height: 300,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Next'),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
