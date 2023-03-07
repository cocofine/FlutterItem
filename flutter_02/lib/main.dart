import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          //导航栏
          appBar: AppBar(
            title: Text("Hooooo"),
          ),
          body: MyCounterWidget(),
        ),
    );
  }
}



class MyCounterWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyCounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () { 
                  setState(() {
                    counter++;
                  });
                },
                child: Text("+1", style: TextStyle(fontSize: 18)),  
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {  
                  setState(() {
                    counter--;
                  });
                },
                child: Text("-1", style: TextStyle(fontSize: 18)),  
              )
            ],
          ),
          Text("计数：$counter", style: TextStyle(fontSize: 20))
        ],

      ),
    );
  }
}



