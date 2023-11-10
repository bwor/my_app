import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 14),
        child: Row(
          children: [
            SizedBox(
              width: 2,
              height: 16,
              child: DecoratedBox(decoration: BoxDecoration(color: Colors.red)),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ));
  }
}
