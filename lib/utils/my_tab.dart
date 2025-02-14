import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconpath;
  const MyTab({super.key, required this.iconpath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          iconpath,
        color: Colors.grey[600]
        )
      ) 
    );
  }
}