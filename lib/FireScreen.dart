import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireScreen extends StatelessWidget {
  final List<String> leftColumnTexts = [
    'eee',
    'rr',
    'mnkk',
  ];

  final List<String> rightColumnTexts = [
    '9000',
    '0090',
    '89989',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.red,
          title: Text('Fire accident time emergency calls'),
        ),
        body: Row(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: leftColumnTexts.length,
                itemBuilder: (context, index) {
                  final text = leftColumnTexts[index];
                  return ListTile(
                    title: Text(text),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: rightColumnTexts.length,
                itemBuilder: (context, index) {
                  final text = rightColumnTexts[index];
                  return InkWell(
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(text: text));
                    },
                    child: ListTile(
                      title: Text(text),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class FireScreen extends StatelessWidget {
//   final List<String> rightColumnTexts = [
//     ' A',
//     ' B',
//     ' C',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Copy Text to your phone'),
//         ),
//         body: ListView.builder(
//           itemCount: rightColumnTexts.length,
//           itemBuilder: (context, index) {
//             final text = rightColumnTexts[index];
//             return ListTile(
//               title: Text(text),
//               onTap: () {
//                 _copyToClipboard(text);
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Text copied to yourphone'),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }

//   void _copyToClipboard(String text) {
//     Clipboard.setData(ClipboardData(text: text));
//   }
// }
