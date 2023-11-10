import 'package:flutter/material.dart';
import './pages/home/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.red),
      // 注册路由表
      routes: {'/': (context) => HomePage()},
    );
  }
}
