import 'package:flutter/material.dart';
import 'package:helper/ambulanccall.dart';
import 'package:helper/ethiotelecomcall.dart';
import 'package:helper/firecall.dart';
import 'package:helper/policecall.dart';
import 'package:helper/powercall.dart';
import 'package:helper/trafick.dart';
import 'package:helper/watercall.dart';

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('የአደጋ ጊዜ ጥሪዎች(emergency Time call)'),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: ' የእሳት አደጋ ጊዜ ጥሪዎች(Fire brigade calls)',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firecall()),
                );
              },
            ),
            CustomButton(
              text: 'የአንቡላንስ ጥሪዎች(Ambulance calls)',
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ambulancecall()),
                );
              },
            ),
            CustomButton(
              text: 'የትራፊክ ፖሊስ ጥሪዎች(Traffic police calls)',
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => trafickcall()),
                );
              },
            ),
            CustomButton(
              text: 'የፖሊስ ጣቢያ ጥሪዎች(Police stations calls)',
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => policecall()),
                );
              },
            ),
            CustomButton(
              text: 'የመብራት ሀይል ጥሪዎች(Power supply calls)',
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => powercall()),
                );
              },
            ),
            CustomButton(
              text: 'የዉሀ ልማት ጥሪዎች(Water supply calls)',
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => watercall()),
                );
              },
            ),
            CustomButton(
              text: 'የethio telecom ጥሪዎች',
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ethiotelecomcall()),
                );
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
  final onPressed;

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
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
