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
              text: 'fire call',
              color: Colors.blue,
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => FireScreen()),
                // );
              },
            ),
            CustomButton(
              text: 'ambulance  call',
              color: Colors.green,
              onPressed: () {
                // Navigator.of(context).push(
                //    MaterialPageRoute(builder: (context) => ambulancScreen()),
                // );
              },
            ),
            CustomButton(
              text: 'police station call',
              color: Colors.orange,
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => policeScreen()),
                // );
              },
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'ethiotelecom call',
              color: Colors.red,
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => ethiotelScreen()),
                // );
              },
            ),
            CustomButton(
              text: 'power station call',
              color: Colors.purple,
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => powerScreen()),
                // );
              },
            ),
            CustomButton(
              text: 'trafic station call',
              color: Colors.yellow,
              onPressed: () {},
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
