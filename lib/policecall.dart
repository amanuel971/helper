import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class policecall extends StatefulWidget {
  @override
  _policecallState createState() => _policecallState();
}

class _policecallState extends State<policecall> {
  final Map<String, String> fireList = {
    'Addis Abeba': '9000',
    'Adama': '0090',
    'Bishoftu': '89989',
    'Hawassa': '58',
    'Gonder': '321'
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
        title: Text('የእሳት አደጋ ጊዜ ጥሪዎች'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterItems,
              decoration: InputDecoration(
                labelText: 'Search',
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
                          await Clipboard.setData(
                            ClipboardData(text: value),
                          );
                          _showToast(context);
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
