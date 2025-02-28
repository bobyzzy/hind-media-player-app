import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtpErrorDialog extends StatelessWidget {
  final String message;
  const OtpErrorDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline_rounded),
          SizedBox(height: 5),
          Text(message),
        ],
      ),
      actions: [
        Platform.isIOS
            ? CupertinoButton(
                onPressed: () => context.pop(), child: Text('Yopish'))
            : TextButton(onPressed: () => context.pop(), child: Text('Yopish')),
      ],
    );
  }
}
