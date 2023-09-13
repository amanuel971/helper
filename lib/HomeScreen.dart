import 'package:flutter/material.dart';
import 'package:helper/MarkDownPage.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Align Demo',
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('የመረጃ መመሪያ(Information Guide)'),
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios),
//           )),
//       body: Align(

//         alignment: Alignment.topLeft,

//         child: ElevatedButton(
//           child: Text('ለልብ ድካም(For heart failure)'),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(
//               builder: (context) {
//                 return const MarkDownPage(
//                   //mdName: 'apple.md',
//                   mdName: 'heartfailuer.md',
//                   title: 'ለልብ ድካም(for Haert failure)',
//                 );
//               },
//             ));
//             ;
//           },
//         ),
//       ),

//     );
//   }
// }
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('የመረጃ መመሪያ(Information Guide)'),
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
              text: 'ለልብ ድካም(For heart failure)',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'heartfailuer.md',
                      title: 'ለልብ ድካም(for Haert failure)',
                    );
                  },
                ));
                ;
              },
            ),
            CustomButton(
              text: 'የወባ በሽታ(For Malaria)',
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'malaria.md',
                      title: 'የወባ በሽታ(for malaria)',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለደም ግፊት(For Blood pressuer)',
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'bloodpressuer.md',
                      title: 'ለደም ግፊት(for blood pressuer)',
                    );
                  },
                ));
                ;
              },
            ),
            CustomButton(
              text: 'ለደም ማነስ(For Anemia)',
              color: Colors.orange,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Anemia.md',
                      title: 'ለደም ማነስ(for anemia)',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለደም ብዛት(For Blood count)',
              color: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'bloodcount.md',
                      title: 'ለደም ብዛት(for blood count)',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለሚጥል በሽታ(For Eplipesy)',
              color: Colors.purple,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Eplipesy.md',
                      title: 'ለሚጥል በሽታ(for eplipesy)',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለስኳር በሽታ(For Doabets)',
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'diabets.md',
                      title: 'ለስኳር በሽታ(for diabets)',
                    );
                  },
                ));
              },
            ),
            CustomButton(
              text: 'ለአስም(For Asthema)',
              color: Colors.teal,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      //mdName: 'apple.md',
                      mdName: 'Asthema.md',
                      title: 'ለአስም(for asthema)',
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
