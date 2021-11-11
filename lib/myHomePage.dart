import 'package:flutter/material.dart';
import 'package:map/toMapFromMap.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 String firstName='';

 map(){
   Map<String,dynamic> mapx={'name':'Ali35'};
   print(mapx);
 }

 @override
 void initState() {
    // TODO: implement initState
    super.initState();
    map();
    print('Deneme');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
                  onPressed: () {
                    print('Map');
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
