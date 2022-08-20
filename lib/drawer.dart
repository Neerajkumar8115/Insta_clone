import 'package:flutter/material.dart';

class Drawer extends StatefulWidget {
  const Drawer({Key? key}) : super(key: key);

  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.face),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.face))],
      ),
    );
  }
}
