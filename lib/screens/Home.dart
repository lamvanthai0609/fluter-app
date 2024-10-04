import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  const MainScreen({required this.title, super.key});

  final Widget title;

   void onPress(){
    print("123");
  }

  @override
  Widget build(BuildContext context){
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: onPress,
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
 
}