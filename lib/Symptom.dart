import 'package:flutter/material.dart';

class Symptom extends StatefulWidget {
  @override
  _SymptomState createState() => _SymptomState();
}

class _SymptomState extends State<Symptom> {
  List<String> itemList = [
    '1.የ ልብ ድካም ',
    '[የትንፋሽ ማጠር]',
    '[ድካም እና ድክመት]',
    '[በእግር፣ በቁርጭምጭሚት ላይ እብጠት]',
    '[ፈጣን ወይም መደበኛ ያልሆነ የልብ ምት]',
    '[የማያቋርጥ ሳል ወይም የትንፋሽ ማፍሰሻ]',
    '[የአካል ብቃት እንቅስቃሴን መቻቻል መቀነስ]',
    '[ክብደት መጨመር]',
    '2,ደም ግፊት',
    '[ራስ ምታት]',
    '[ማዞር ]',
    '[የዓይን ብዥታ]',
    '[የደረት ሕመም]',
    '[ትንፋሽ ማጠር]',
    '[ድካም ወይም ድክመት]',
    '[የአፍንጫ ደም መፍሰስ]',
    '3,ደም ማነስ',
    '[ራስ ምታት]',
    '[ማዞር ወይም ራስ ምታት]',
    '[የዓይን ብዥታ]',
    '[የደረት ሕመም]',
    '[የትንፋሽ ማጠር]',
    '[ድካም ወይም ድክመት]',
    '[የአፍንጫ ደም መፍሰስ]',
    '4.የስኳር በሽታ',
    '[በተደጋጋሚ የሽንት መሽናት]',
    '[ከመጠን በላይ ጥማት]',
    '[ያልታወቀ ክብደት መቀነስ]',
    '[ረሃብ መጨመር]',
    '[ድካም እና ድክመት]',
    '[ቁስሎችን ቀስ በቀስ ማዳን]',
    '[ብዥ ያለ እይታ]',
    '[መደንዘዝ ወይም መንቀጥቀጥ]',
    '[ተደጋጋሚ ኢንፌክሽኖች]',
    '5,ደም ብዛት',
    '[ኢንፌክሽኖች]',
    '[መድማት ወይም መሰባበር]',
    '[እብጠት ወይም ራስን የመከላከል ሁኔታዎች]',
    '[የደም መዛባቶች]',
    '6.የሚጥል በሽታ',
    '[የንቃተ ህሊና መሳት]',
    '[የመናድ ችግር]',
    '[የትኩረት መናድ]',
    '[ የእይታ መዛባት]',
    '[የንቃተ ህሊና ማጣት]',
    '[ግራ መጋባት ወይም የማስታወስ ችግር]',
    '[ መኮማተር ና መደንዘዝ]',
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
        backgroundColor: Colors.red,
        title: Text('Symptoms of heart failuer'),
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
