import 'package:flutter/material.dart';
import 'drawer/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Music App"),
      ),
    );
  }
}
