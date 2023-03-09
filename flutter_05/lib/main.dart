import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("111"),
          ),
          body: MyHomeBody()),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  List<Widget> getGridWidgets() {
    return List.generate(100, (index) {
      return Container(
        color: Colors.purple,
        alignment: Alignment(0, 0),
        child: Text("item$index",
            style: TextStyle(fontSize: 20, color: Colors.white)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.purple,
            alignment: Alignment(0, 0),
            child: Text("item$index",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          );
        });
  }
}

// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView.separated(
//       itemCount: 100,
//       // itemExtent: 80,
//       itemBuilder: (context, index) {
//         return ListTile(title: Text("标题$index"), subtitle: Text("详情内容$index"));
//       },
//       separatorBuilder: (context, index) {
//         return index % 2 == 0
//             ? Divider(color: Colors.blue)
//             : Divider(color: Colors.red);
//       },
//     );
//   }
// }


// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.vertical,
//       children: <Widget>[
//         ListTile(
//           leading: Icon(
//             Icons.people,
//             size: 36,
//           ),
//           title: Text("联系人"),
//           subtitle: Text("联系人信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.email,
//             size: 36,
//           ),
//           title: Text("邮箱"),
//           subtitle: Text("邮箱地址信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.message,
//             size: 36,
//           ),
//           title: Text("消息"),
//           subtitle: Text("消息详情信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.map,
//             size: 36,
//           ),
//           title: Text("地址"),
//           subtitle: Text("地址详情信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         )
//       ],
//     );
//   }
// }
