import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class watercall extends StatefulWidget {
  @override
  _watercallState createState() => _watercallState();
}

class _watercallState extends State<watercall> {
  final Map<String, String> fireList = {
    'Desse': '+0331118031',
    'shashemane': '0461100392 ',
    ' mekele ': '0344400791',
    ' mekele': ' 6900',
  };

  List<String> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList.addAll(fireList.keys);
  }

  void filterItems(String query) {
    filteredList.clear();
    if (query.isNotEmpty) {
      fireList.forEach((key, value) {
        if (key.toLowerCase().contains(query.toLowerCase())) {
          setState(() {
            filteredList.add(key);
          });
        }
      });
    } else {
      setState(() {
        filteredList.addAll(fireList.keys);
      });
    }
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Number copied!'),
        action: SnackBarAction(
          label: 'Okay',
          onPressed: scaffold.hideCurrentSnackBar,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ወደ ዉሀ ልማት ጥሪዎች'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterItems,
              decoration: InputDecoration(
                labelText: 'find',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                final key = filteredList[index];
                final value = fireList[key];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(key),
                      InkWell(
                        onTap: () async {
                          await FlutterPhoneDirectCaller.callNumber(value);
                        },
                        child: Text(
                          value!,
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
