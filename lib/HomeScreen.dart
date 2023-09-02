import 'package:flutter/material.dart';
import 'package:helper/MarkDownPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Information Guide'),
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
              text: ' heart failure',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'heartfailuer.md',
                      title: 'heartfailuer',
                    );
                  },
                ));
                ;
              },
            ),
            CustomButton(
              text: 'Blood presure',
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'bloodpressuer.md',
                      title: 'bloodpressuer',
                    );
                  },
                ));
                ;
              },
            ),
            CustomButton(
              text: 'Anemia',
              color: Colors.orange,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Anemia.md',
                      title: 'Anemia',
                    );
                  },
                ));
              },
            ),
            CustomButton(text: "Flu", color: Colors.brown, onPressed: () {})
          ],
        ),
        SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'Blood count',
              color: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'bloodcount.md',
                      title: 'bloodcount',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'Epilepsy',
              color: Colors.purple,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MarkDownPage(mdName: 'Eplipesy.md')));
              },
            ),
            CustomButton(
              text: 'Diabetes',
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'diabets.md',
                      title: 'diabetes',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'Asthma',
              color: Colors.teal,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Asthema.md',
                      title: 'Asthema',
                    );
                  },
                ));
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
