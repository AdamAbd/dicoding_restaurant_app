import 'dart:async';

import 'package:flutter/material.dart';

void scrollToBottom(ScrollController _scrollController) {
  Timer(
    const Duration(milliseconds: 50),
    () => _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    ),
  );
}
