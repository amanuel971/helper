import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  List<String> itemList = [
    'addis abeba',
    'adama',
    'bishoftu',
    'hawasa',
    'Gonder',
  ];

  List<String> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList.addAll(itemList);
  }

  void filterItems(String query) {
    filteredList.clear();
    if (query.isNotEmpty) {
      itemList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredList.add(item);
        }
      });
    } else {
      filteredList.addAll(itemList);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Guide'),
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
                return ListTile(
                  title: Text(filteredList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
