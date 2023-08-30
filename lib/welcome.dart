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
