import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("nav"),
        ),
        body: MyHomeStackBody(),
      ),
    );
  }
}

class MyHomeStackBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.pink,
          width: 300,
          height: 300,
        ),
        Positioned(
            child: Icon(
          Icons.favorite,
          size: 50,
        )),
        Positioned(
          child: Text("nihao"),
          bottom: 20,
          right: 20,
        )
      ],
    );
  }
}

// class MyHomeExpandedBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Expanded(
//           flex: 1,
//           child: Container(color: Colors.red, height: 60),
//         ),
//         Container(color: Colors.blue, width: 80, height: 80),
//         Container(color: Colors.green, width: 70, height: 70),
//         Expanded(
//           flex: 1,
//           child: Container(color: Colors.orange, height: 100),
//         )
//       ],
//     );
//   }
// }

// class MyHomeRowBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisSize: MainAxisSize.max,
//       children: <Widget>[
//         Container(color: Colors.red, width: 60, height: 60),
//         Container(color: Colors.blue, width: 80, height: 80),
//         Container(color: Colors.green, width: 70, height: 70),
//         Container(color: Colors.orange, width: 100, height: 100),
//       ],
//     );
//   }
// }

// class MyHomePaddingBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("哈哈红红火火恍恍惚惚"),
//       color: Color.fromRGBO(3, 3, 255, .5),
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           border: Border.all(
//               color: Colors.redAccent, width: 3, style: BorderStyle.solid),
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(offset: Offset(5, 5), color: Colors.red, blurRadius: 5)
//           ],
//           gradient: LinearGradient(colors: [Colors.red, Colors.green])),
//     );
//   }
// }

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Icon(
        Icons.pets,
        size: 36,
        color: Colors.red,
      ),
      alignment: Alignment.bottomRight,
      widthFactor: 3,
      heightFactor: 3,
    );
  }
}
