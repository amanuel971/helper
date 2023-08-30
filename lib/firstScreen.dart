import 'package:flutter/material.dart';

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Emergency Time call'),
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
              text: 'Button 1',
              color: Colors.blue,
              onPressed: () {},
            ),
            CustomButton(
              text: 'Button 2',
              color: Colors.green,
              onPressed: () {
                // Add button 2 functionality
              },
            ),
            CustomButton(
              text: 'Button 3',
              color: Colors.orange,
              onPressed: () {
                // Add button 3 functionality
              },
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'Button 4',
              color: Colors.red,
              onPressed: () {
                // Add button 4 functionality
              },
            ),
            CustomButton(
              text: 'Button 5',
              color: Colors.purple,
              onPressed: () {
                // Add button 5 functionality
              },
            ),
            CustomButton(
              text: 'Button 6',
              color: Colors.yellow,
              onPressed: () {
                // Add button 6 functionality
              },
            ),
            CustomButton(
              text: 'Button 7',
              color: Colors.teal,
              onPressed: () {
                // Add button 7 functionality
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
