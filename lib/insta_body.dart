import 'package:flutter/material.dart';
import 'package:insta/insta_list.dart';

class InstaBody extends StatefulWidget {
  const InstaBody({Key? key}) : super(key: key);

  @override
  State<InstaBody> createState() => _InstaBodyState();
}

class _InstaBodyState extends State<InstaBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Flexible(child: InstaList()),
      ],
    );
  }
}
