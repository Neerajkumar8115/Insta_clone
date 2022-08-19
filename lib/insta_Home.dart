import 'package:flutter/material.dart';
import 'package:insta/insta_body.dart';

class InstaHome extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final TopBar = AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 2,
    leading: Icon(
      Icons.camera_alt,
      color: Colors.black,
    ),
    title: const Text('Instagram',
        style: TextStyle(
          color: Colors.black,
        )),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.send,
          color: Colors.black,
        ),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar,
      body: const InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              tooltip: "Home",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              tooltip: "Search",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box),
              tooltip: "create post",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              tooltip: "Favorite",
            ),
            IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Drawer(),
                //     ));
              },
              icon: const Icon(Icons.account_box),
              tooltip: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
