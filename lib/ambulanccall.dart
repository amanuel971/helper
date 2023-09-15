import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ambulancecall extends StatefulWidget {
  @override
  _ambulancecallState createState() => _ambulancecallState();
}

class _ambulancecallState extends State<ambulancecall> {
  final Map<String, String> fireList = {
    'Addis Ababa:addis cardiac': '+251 11 6634720',
    'Addis Ababa:alert': '+251 11 3711200',
    'Addis Ababa:amanule': '+251 11 2131516',
    'Addis Ababa:armed force': '+251 11 3712020',
    'Addis Ababa:bete zata': '+251 11 5514141',
    'Addis Ababa:bethel': '+251 11 3730122',
    'Addis Ababa:brsrga': '+251 11 5531216',
    'Addis Ababa:black lion': '+251 11 5511211',
    'Addis Ababa:dej.balcha gandi': '+251 11 5513205',
    'Addis Ababa:mahateme gandi': '+251 11 5518185',
    'Addis Ababa:hayat': '+251 11 6662448',
    'Addis Ababa:kaldisco': '+251 11 6298904',
    'Addis Ababa:st.gabriel': '+251 11 6613622',
    'Addis Ababa:st.paulos': '+251 11 2798303',
    'Addis Ababa:st.peter': '+251 11 1236229',
    'Addis Ababa:st.yared': '+251 11 6454604',
    'Addis Ababa:zawditu': '+251 11 5518085',
    'Dessa:keymeskel': '+0331111566',
    'shashemane': ' 0461106118',
    'shashemane ': '0461106666',
    'mekele': '0344404715',
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
        title: Text('ወደ አንቡላንስ ጥሪዎች(Amulance calls)'),
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
