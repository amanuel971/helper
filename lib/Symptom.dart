import 'package:flutter/material.dart';
import 'package:helper/anemiasymptom.dart';
import 'package:helper/asthmasymptom.dart';
import 'package:helper/bloodcsymptom.dart';
import 'package:helper/bloodpsymptoms.dart';
import 'package:helper/diabetsymptom.dart';
import 'package:helper/epilepsysymptom.dart';
import 'package:helper/heartsymptom.dart';

class symptom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('SYMPTOMS'),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            )),
        body: Center(
          child: ButtonLayout(),
        ),
      ),
    );
  }
}

class ButtonLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: ' heart failure',
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => heartsymptom()),
                );
              },
            ),
            CustomButton(
              text: 'Blood presure',
              color: Colors.green,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => bloodpsymptoms()),
                );
              },
            ),
            CustomButton(
              text: 'Anemia',
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => anemiasymptom()),
                );
              },
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'Blood count',
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => bloodcsymptom()));
              },
            ),
            CustomButton(
              text: 'Epilepsy',
              color: Colors.purple,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => epilepsysymptom()));
              },
            ),
            CustomButton(
              text: 'Diabetes',
              color: Colors.yellow,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => diabetsymptom()));
              },
            ),
            CustomButton(
              text: 'Asthma',
              color: Colors.teal,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => asthmasymptom()));
              },
            ),
          ],
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
