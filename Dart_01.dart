

void main(List<String> args) {
  //dynamic 和 Object 都能用于声明变量。 类似于Void和NSObject
  //dynamic与Object不同的是dynamic声明的对象编译器会提供所有可能的组合，而Object声明的对象只能使用 Object 的属性与方法, 否则编译器会报错
  dynamic a1;
  Object a2 = "2";
  print(a1);
  print(a2);

  /*  var/final/const
    var 类型推断
    final 类似let，只能赋值一次，变量在第一次使用时被初始化
    const 只能赋值一次，变量是一个编译时常量（编译时直接替换为常量值）
  */
  var b1 = "hello world";
  final b2 = "hello world";
  const b3 = "hello world";
  print(b1 + b2 + b3);

  //可选型 ? ! 和可选型和强制解包
  int? c1;  //表示可为空。
  c1 = 3;
  late int c2;  //类似!，表示暂时不复制，一定会有值
  c2 = 3;
  print(c1 + c2);

  //函数声明
  bool isNoble1(int number) {
    return true;
  }
  bool isNoble2(int number) => true;  //简写
  print(isNoble1(3));
  print(isNoble2(3));

  //闭包
  var say = (str){
    print(str);
  };
  say("hi world");
  void execute(var callback) {
    callback();
  }
  execute(() => print("xxx"));

  //可选参数
  String say2(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
  }
  print(say2('Bob', 'Howdy'));
  print(say2('Bob', 'Howdy', 'smoke signal'));

  //命名参数
  enableFlags({bool bold = false, bool hidden = false}) {
    //
  }
  enableFlags(bold: true, hidden: false);

  //异步操作
  Future.delayed(Duration(seconds: 1),() {
    print("hhh");
    throw AssertionError("Error");
  }).then((data){
    print(data);  //成功
  }).catchError((error){
    print(error); //失败
  }).whenComplete(() {
    //完成就会走到这
  });
  
  //wait 类似于gcd的group
  Future.wait([
    Future.delayed(Duration(seconds: 1), (){
      return "hello";
    }),
    Future.delayed(Duration(seconds: 2), (){
      return "world";
    })
  ]).then((value) {
    print(value[0] + value[1]);
  }, onError: (error){
    print(error);
  });

    //asyn/wait
  Future<String> login(String userName, String pwd){
      //用户登录
    return Future<String>.delayed(Duration(seconds: 1), (){
      return "hello";
    });
  };
  Future<String> getUserInfo(String id){
      //获取用户信息 
    return Future<String>.delayed(Duration(seconds: 1), (){
      return "hello";
    });
  };
  Future saveUserInfo(String userInfo){
    // 保存用户信息 
    return Future.delayed(Duration(seconds: 1), (){
      return "hello";
    });
  }; 
  task() async {
    try {
      String id = await login("userName", "pwd");
      String userInfo = await getUserInfo(id);
      await saveUserInfo(userInfo);
    } catch (error) {
      print(error);
    }
  }
  print(task());

//Stream，多次接受异步结果
  Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(Duration(seconds: 2),(){
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data){
    print(data);
  }, onError: (e){
    print(e.message);
  },onDone: (){

  });


}

//mixin  类似协议
class Dog with Eat, Walk {}
class Man extends Person with Eat, Walk {}


class Person {

}

mixin Eat {

}

mixin Walk {

}