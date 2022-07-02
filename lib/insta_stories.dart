import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  InstaStories({Key? key}) : super(key: key);

  final topText =
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    const Text('Stories',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        )),
    Row(children: const [
      Icon(Icons.play_arrow),
      Text('Watch All',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
    ]),
  ]);
  final stories = Expanded(
      child: Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) =>
          Stack(alignment: Alignment.bottomRight, children: [
        Container(
          height: 90,
          width: 90,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://img-fotki.yandex.ru/get/5114/127863950.77/0_87274_1261ad98_orig.jpg')),
          ),
          // margin: const EdgeInsets.symmetric(horizontal: 8.0),
        ),
        index == 0
            ? const Positioned(
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 10.0,
                  child: Icon(
                    Icons.add,
                    size: 14.0,
                    color: Colors.white,
                  ),
                ),
              )
            : Container()
      ]),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
