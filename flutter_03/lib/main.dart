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
      home: Scaffold(
        //导航栏
        appBar: AppBar(
          title: Text("Hooooo"),
        ),
        body: TextFieldDeom(),
      ),
    );
  }
}

//TextFeild
class TextFieldDeom extends StatefulWidget {
  @override
  State<TextFieldDeom> createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDeom> {
  /*
  final textController = TextEditingController();
  @override
  void initState() {
    super.initState();
    textController.text = "hello";
    textController.addListener(() {
      print("===${textController.text}");
    });
  }
  */
  final registerKey = GlobalKey<FormState>();
  String username = "0", password = "0";

  void registerForm() {
    registerKey.currentState?.save();
    registerKey.currentState?.validate();
    print("$username,$password");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "username",
                  hintText: "请输入",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.lightBlue),
              onChanged: (value) {
                print("change");
              },
              onSaved: (value) {
                this.username = value ?? "1";
              },
              validator: (value) {
                var count = value?.length ?? 0;
                if (count <= 0) {
                  return "账号不能为空";
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "password",
                  hintText: "mima",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.lightBlue),
              onChanged: (value) {
                print("change");
              },
              onSaved: (value) {
                this.password = value ?? "1";
              },
            ),
            ElevatedButton(onPressed: registerForm, child: Text("login"))
          ],
        ));
  }
}

// class TextFieldDemoState2 extends State<TextFieldDeom> {
//   final textController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {

//   }
// }

//圆角的三种方式
class MyHomeCircleBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
            child: Container(
              alignment: Alignment(0, .5),
              width: 200,
              height: 200,
              child: Text("000"),
            ),
          ),
          ClipOval(
            child: Image.network(
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
              width: 200,
              height: 200,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
              width: 200,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}

//图片
class MyHomeImageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.network(
            "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
            alignment: Alignment.center,
            // repeat: ImageRepeat.repeatY,
            color: Colors.red,
            colorBlendMode: BlendMode.colorBurn,
            fit: BoxFit.fill,
          ),
          width: 300,
          height: 300,
          color: Colors.yellow,
        ),
        Container(
          child: Image.asset("images/IMG_0155.JPG"),
          width: 300,
          height: 300,
          color: Colors.yellow,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}

//按钮
class MyHomeBtnBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FloatingActionButton(
            onPressed: () {}, child: Text("FloatingActionButton")),
        ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
        TextButton(onPressed: () {}, child: Text("ElevatedButton")),
        OutlinedButton(onPressed: () {}, child: Text("ElevatedButton")),
        ElevatedButton(
            onPressed: () {},
            child: Text("123", style: TextStyle(color: Colors.pink))),
      ],
    );
  }
}

//文本、富文本
class MyHomeTextBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return const Text.rich(
      TextSpan(children: [
        TextSpan(
            text: "《定风波》",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        TextSpan(
            text: "苏轼",
            style: TextStyle(fontSize: 18, color: Colors.redAccent)),
        TextSpan(text: "\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。")
      ]),
      style: TextStyle(fontSize: 20, color: Colors.purple),
      textAlign: TextAlign.center,
    );
  }
}
