import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class policecall extends StatefulWidget {
  @override
  _policecallState createState() => _policecallState();
}

class _policecallState extends State<policecall> {
  final Map<String, String> fireList = {
    'Addis Abeba:federal police ': '916',
    'Addis Ababa:police comition': '+251 11 15572121',
    'Addis Ababa:ldata police': '+251 11 5153760',
    'Addis Ababa:kirlos': '+251 11 5534774',
    'Addis Ababa:arada': '+251 11 1573426',
    'Addis Ababa:yeka': '+251 11 1181339',
    'Addis Ababa:nfas selkelafto': '+251 11 3400792',
    'Addis Ababa:kolfe': '+251 11 3494115',
    'Addis Ababa:akaki kality': '+251 11 4341438',
    'Addis Ababa:bole': '+251 11 6536794',
    'Addis Ababa:addis ketama': '+251 11 2788706',
    'Addis Ababa:gulele': '+251 11 1575059',
    'Bishoftu:sunshaion': '+251 11 4308918',
    'Dessa': '+033 1117748',
    'shashemane': '0461105440',
    'mekele police': '+251344417695'
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
        title: Text('ወደ ፖሊስ ጥሪዎች(Police station calls)'),
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
