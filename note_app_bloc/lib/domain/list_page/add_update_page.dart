import 'package:flutter/material.dart';

Widget addOrUpdatePage([String? title, String? description]) {
  return Container(
    width: 100,
    height: 100,
    color: Colors.purple,
    child: Column(
      children: [
        Text(title ?? ""),
        Text(description ?? ""),
      ],
    ),
  );
}
