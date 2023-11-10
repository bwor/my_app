import 'package:flutter/material.dart';
import 'components/recommend_section.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tabs = ['推荐音乐', '热歌榜', '搜索'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
              title: Text("网易云音乐"),
              bottom: TabBar(tabs: tabs.map((e) => Tab(text: e)).toList())),
          body: TabBarView(children: [
            Container(
              alignment: Alignment.center,
              child: RecommendedSection(),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('热歌榜', textScaleFactor: 5),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('搜索', textScaleFactor: 5),
            )
          ]),
        ));
  }
}
