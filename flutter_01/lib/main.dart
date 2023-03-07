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
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(border: Border.all()),
        child: ListView(
          children: <Widget>[
            ProductItem("Apple1", "Macbook Product1",
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
            ProductItem("Apple2", "Macbook Product2",
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
            ProductItem("Apple3", "Macbook Product3",
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
          ],
        ));
  }
}

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Checkbox(value: true, onChanged: (value) => print("hell")),
//           Text(
//             "agree",
//             textDirection: TextDirection.ltr, //从左到右
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  ProductItem(this.title, this.desc, this.imageUrl); //初始化方法

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: 24)),
        Text(desc, style: TextStyle(fontSize: 18)),
        SizedBox(height: 10), //间距
        Image.network(imageUrl)
      ],
    );
  }
}
