import 'package:flutter/material.dart';

class CustomTabGridViewContent extends StatelessWidget {
  final String imageAsset;
  const CustomTabGridViewContent({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (context, index) {
        return ConstrainedBox(
          constraints: BoxConstraints.expand(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('$imageAsset'),
              ),
            ),
          ),
        );
      },
    );
  }
}
