import 'package:flutter/material.dart';
import 'package:helper/MarkDownPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('የመረጃ መመሪያ'),
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
              text: 'ለልብ ድካም',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'heartfailuer.md',
                      title: 'ለልብ ድካም',
                    );
                  },
                ));
                ;
              },
            ),
            CustomButton(
              text: 'ለደም ግፊት',
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'bloodpressuer.md',
                      title: 'ለደም ግፊት',
                    );
                  },
                ));
                ;
              },
            ),
            CustomButton(
              text: 'ለደም ማነስ',
              color: Colors.orange,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Anemia.md',
                      title: 'ለደም ማነስ',
                    );
                  },
                ));
              },
            ),
          ],
        ),
        SizedBox(height: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'ለደም ብዛት',
              color: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'bloodcount.md',
                      title: 'ለደም ብዛት',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለሚጥል በሽታ',
              color: Colors.purple,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Eplipesy.md',
                      title: 'ለሚጥል በሽታ',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለስኳር በሽታ',
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'diabets.md',
                      title: 'ለስኳር በሽታ',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለአስም',
              color: Colors.teal,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Asthema.md',
                      title: 'ለአስም',
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
