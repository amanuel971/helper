import 'package:flutter/material.dart';

class informationScreen extends StatelessWidget {
  const informationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('about us'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          )),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'This HELPER is used to get information about emergency time helping for some body , and to get phone number to call emergency time  Government sectors. \n',
                style: TextStyle(fontSize: 20.0, color: Colors.pink),
              ),
              TextSpan(
                text:
                    '                                                                                                                                                                        ',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              TextSpan(
                text:
                    'ይህ HELPER ለአንድ አካል እርዳታ ስለ አስቸኳይ ጊዜ መረጃ ለማግኘት እና የድንገተኛ ጊዜ የመንግሥት ሴክተር ስልክ ቁጥር ለማግኘት ያገለግላል።\n',
                style: TextStyle(fontSize: 20.0, color: Colors.purple),
              ),
            ],
          ),
        ),
      ),
      //   SizedBox(
      //     height: 40,
      //   ),
      //   Text(
      //     ' This HELPER is used to get information about emergency time helping for some body , and to get phone number to call emergency time  Government sectors /n. ይህ HELPER ለአንድ አካል እርዳታ ስለ አስቸኳይ ጊዜ መረጃ ለማግኘት እና የድንገተኛ ጊዜ የመንግሥት ሴክተር ስልክ ቁጥር ለማግኘት ያገለግላል.',
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ]),
    );
  }
}
