import 'package:flutter/material.dart';
import '../../../components/title/title.dart';
import './recommend_music.dart';
import './recommend_hot_music.dart';

class RecommendedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "编辑推荐"),
        RecommendMusic(),
        SectionTitle(title: "最新音乐"),
        RecommendHotMusic(),
      ],
    );
  }
}
