import 'package:flutter/material.dart';

class informationScreen extends StatelessWidget {
  final List<String> leftColumnTexts = [
    'eee',
    'rr',
    'mnkk',
    'mnkk',
  ];

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
        title: SearchBar(),
      ),
      body: Row(children: [
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
      ]),
    ));
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            _searchController.clear();
          },
        ),
      ),
      onSubmitted: (value) {},
    );
  }
}
