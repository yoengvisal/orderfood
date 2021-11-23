import 'package:flutter/material.dart';
import 'package:orderfood/components/app_bar.dart';
import 'package:orderfood/components/body.dart';
import 'package:orderfood/components/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNarBar(),
      body: Body(),
    );
  }
}
