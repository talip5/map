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

  Map<String,dynamic> map={'name':'Zafer1','number':75};
  Map<String,dynamic> map1={};
  String toName='';
  int toNumber=0;
  String name1='';
  int number1=0;
  
  fromMap(Map<String,dynamic> map) {
  //String toName=map.values.toString();
    toName=map['name'];
    toNumber=map['number'];
  print(toName);
  print(toNumber);
  }

 Map<String,dynamic> toMap(name1,int number){
    //Map<String,dynamic> map1={'name':name1,'number':number};
   map1={'name':name1,'number':number};
    return map1;
 }

 readMap(){
   Map<String,dynamic> mapq= toMap('Ahmet',38);
    fromMap(mapq);
 }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // fromMap(map);
    readMap();
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
