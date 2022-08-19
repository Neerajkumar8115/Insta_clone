import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'insta_stories.dart';

class InstaList extends StatefulWidget {
  const InstaList({Key? key}) : super(key: key);

  @override
  State<InstaList> createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;
  bool bookmark = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.15,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnSsLWVn6ZOrtsgl4lhc4C9DnRGk8ituA04w&usqp=CAU')),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "I am Neeraj8115",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const IconButton(
                        iconSize: 15,
                        icon: Icon(
                          Icons.more_vert,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    'https://img-fotki.yandex.ru/get/5114/127863950.77/0_87274_1261ad98_orig.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(isPressed
                                ? Icons.favorite
                                : FontAwesomeIcons.heart),
                            color: isPressed ? Colors.red : Colors.black,
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          const Icon(FontAwesomeIcons.comment),
                          const SizedBox(
                            width: 16.0,
                          ),
                          const Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      IconButton(
                        icon: Icon(bookmark
                            ? Icons.bookmark
                            : FontAwesomeIcons.bookmark),
                        color: bookmark ? Colors.grey : Colors.black,
                        onPressed: () {
                          setState(() {
                            bookmark = !bookmark;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Liked by Neeraj kumar and 1.4k others',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35.0,
                        width: 35.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              'https://scontent-del1-1.xx.fbcdn.net/v/t1.6435-9/94639528_2521932364724385_221617628119040000_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LiWcfFa75KcAX-pWkQZ&_nc_ht=scontent-del1-1.xx&oh=00_AT_9R6iNwFlclWlOfwCyoJ_R6nfLnUE_XKrZ6LdbeFb2Xw&oe=62E18FFD',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                        width: 17,
                      ),
                      const Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add a comment....',
                        ),
                      )),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '1 Day ago',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
