
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String text;
  const CustomTab({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Center(child: Text(text)),
      ),
    );
  }
}