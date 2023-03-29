import 'package:flutter/material.dart';

AppBar gameAppBar() {
  return AppBar(
    title: const Text(
      "Minesweeper",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontFamily: 'TickingTimebombBB',
      ),
    ),
    actions: const [],
    centerTitle: true,
  );
}
