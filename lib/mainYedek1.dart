import 'package:flutter/material.dart';
import 'package:map/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  map() {
    Map<String, dynamic> mapx = {'name': 'Ali35','number':35};
    print(mapx);
    //mapx.update('number', (value)=>++value);
    //mapx.update('name', (value) => 'demir',ifAbsent: ()=>'demir');
    //mapx.update('name', (value) => 'demir35');
    //print(mapx);
    //mapx.update('number', (value) => 50);
    /* mapx.forEach((key, value) {
      if(key=='name') {
        print(value);
      }
    });*/
    //print('Map deger :$mapx');
    bool boolName=mapx.containsKey('name');
    print(boolName);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    map();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'map',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Map'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Map'),
              ElevatedButton(
                onPressed: () {
                  print('Map');
                },
                child: Text('Map'),
              ),
              Text('firstName'),
            ],
          ),
        ),
      ),
    );
  }
}
