import 'package:flutter/material.dart';
import 'package:helper/ambulanccall.dart';

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('የአደጋ ጊዜ ጥሪዎች'),
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
              text: ' የእሳት አደጋ ጊዜ ጥሪዎች',
              color: Colors.blue,
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return const MarkDownPage(
                //       //mdName: 'apple.md',
                //       mdName: 'firecall.md',
                //       title: 'የእሳት አደጋ ጊዜ ጥሪዎች',
                //     );
                //   },
                // ));
                // ;
              },
            ),
            CustomButton(
              text: 'የአንቡላንስ ጥሪዎች',
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => amnbulanccall()),
                );
              },
            ),
            CustomButton(
              text: 'የፖሊስ ጣቢያ ጥሪዎች',
              color: Colors.orange,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'የመብራት ሀይል ጥሪዎች',
              color: Colors.red,
              onPressed: () {},
            ),
            CustomButton(
              text: 'የethio telecom ጥሪዎች',
              color: Colors.yellow,
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return const MarkDownPage(
                //       //mdName: 'apple.md',
                //       mdName: 'ethiotelecom.md',
                //       title: 'የethio telecom ጥሪዎች',
                //     );
                //   },
                // ));
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
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
