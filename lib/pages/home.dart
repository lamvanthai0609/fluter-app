import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/bottom_navigation.dart';
import 'package:flutter_application_1/layout/screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void setIndexState(index) {
    setState(() {
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        tabController: _tabController,
        setIndexState: setIndexState,
      ),
      body: Screen(
        tabController: _tabController,
      ),
    );
  }
}
