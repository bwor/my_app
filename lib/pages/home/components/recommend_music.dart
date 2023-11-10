import 'package:flutter/material.dart';
import 'dart:math';

final json = [
  Music(
      name: "治愈轻音 : 紫色的温柔萦绕在人间",
      picUrl:
          "https://imgessl.kugou.com/custom/400/20210716/20210716172932894935.jpg"),
  Music(
      name: "元气欧美丨寻找今日份快乐音符",
      picUrl:
          "https://imgessl.kugou.com/custom/400/20210720/20210720101944948133.jpg"),
  Music(
      name: "减压纯音：夜来到，愿你放下所有忧愁",
      picUrl:
          "https://imgessl.kugou.com/custom/400/20210720/20210720225820502678.jpg"),
  Music(
      name: "国风新歌：一品人间，录红尘万千",
      picUrl:
          "https://imgessl.kugou.com/custom/400/20210616/20210616155438836313.png"),
  Music(
      name: "「纯音乐」明明很孤独，却总说喜欢一个人",
      picUrl:
          "https://imgessl.kugou.com/custom/400/20210213/20210213002253320756.jpg"),
  Music(
      name: "微醺蒸汽：朝朝辞暮尔尔辞晚碎碎念安",
      picUrl:
          "https://imgessl.kugou.com/custom/400/20210823/20210823214418542499.jpg")
];

class Music {
  const Music({required this.name, required this.picUrl});
  final String name;
  final String picUrl;
}

class MusicItem extends StatelessWidget {
  const MusicItem({Key? key, required this.music}) : super(key: key);

  final Music music;

  @override
  Widget build(BuildContext context) {
    print(music);
    return Expanded(
      flex: 1,
      child: Padding(
          padding: EdgeInsets.fromLTRB(1, 0, 1, 16),
          child: Column(children: [
            Image(
              image: NetworkImage(music.picUrl),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(6, 6, 2, 0),
              child: Text(
                music.name,
                maxLines: 2,
                textScaleFactor: 1.2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13),
              ),
            )
          ])),
    );
  }
}

class RecommendMusic extends StatefulWidget {
  @override
  _MusicListStateWidget createState() => _MusicListStateWidget();
}

class _MusicListStateWidget extends State<RecommendMusic> {
  final List<List<Music>> _list = [];

  @override
  void initState() {
    _list.addAll(chunk(json, 3));
    super.initState();
  }

  List<List<Music>> chunk(List<Music>? array, int size) {
    final maxSize = max<int>(size, 0);
    final length = array == null ? 0 : array.length;
    if (length == 0 || maxSize < 1) {
      return [];
    }
    int index = 0;
    final List<List<Music>> result = [];
    while (index < length) {
      result.add(array!.sublist(index, index += size));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _list
          .map(
            (item) => Row(
              children: item
                  .map(
                    (music) => MusicItem(music: music),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );
  }
}
