import 'package:flutter/material.dart';
import 'package:HELPER/HomeScreen.dart';
import 'package:HELPER/MarkDownPage.dart';
import 'package:HELPER/firstScreen.dart';
import 'package:HELPER/welcome.dart';

void main() {
  runApp(MaterialApp(
    home: Welcome(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => firstScreen()),
                );
              },
              child: Text('የአደጋ ጊዜ ጥሪዎች(Emergency Time Calls)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MarkDownPage(
                      mdName: 'symptom.md',
                      title: 'ምልክቶች(Symptoms)',
                    );
                  },
                ));
              },
              child: Text('ምልክቶች(Symptoms)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('የመረጃ መመሪያ(Information Guide)'),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:helper/firstScreen.dart';
// import 'package:helper/HomeScreen.dart';

// //import 'package:helper/Symptom.dart';
// import 'package:helper/welcome.dart';
// import 'package:helper/MarkDownPage.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Welcome(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           title: Text('Home Page'),
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios),
//           )),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//             '',
//             style: TextStyle(fontSize: 20),
//           ),
//           SizedBox(height: 80),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => firstScreen()),
//                       );
//                     },
//                     child: Text('የአደጋ ጊዜ ጥሪዎች(Emergency Time Calls)'),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return const MarkDownPage(
                      //       mdName: 'symptom.md',
                      //       title: 'ምልክቶች',
                      //     );
                      //   },
                      // ));
//                     },
//                     child: Text('ምልክቶች(Symptoms)'),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => HomeScreen()),
//                       );
//                     },
//                     child: Text('የመረጃ መመሪያ(Information Guide)'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
