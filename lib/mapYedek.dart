import 'package:flutter/material.dart';
import 'package:map/toMapFromMap.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ToMapFromMap toMapFromMap=ToMapFromMap('ali');

  Map<String,dynamic> map={'name':'Ahmet'};
  List<Map<String,dynamic>> list=[{'name':'veli','lastName':'can','number':1},
    {'name':'veli5','lastName':'can5','number':2},
    {'name':'veli35','lastName':'can35','number':3}
  ];

  String firstName='';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myHomePage',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Map'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Map'),
              ElevatedButton(
                onPressed: (){
                  //print('Map');
                  //print(toMapFromMap.name);
                  //print(map.length);
                  //print(list.length);
                  if(list.isNotEmpty) {
                    list.remove('name');
                  }
                  //print(list.first.values);
                  Map<String,dynamic> map1=list.first;
                  setState(() {
                    firstName=toMapFromMap.name;
                  });
                  Map<String,dynamic> map2=toMapFromMap.map('kemal',35);
                  print(map2.values);
                },
                child: Text('Map'),
              ),
              Text(firstName),
            ],
          ),
        ),
      ),
    );
  }
}
