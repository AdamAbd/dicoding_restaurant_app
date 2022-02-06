import 'package:flutter/material.dart';

void unfocus(BuildContext ctx) {
  if (FocusScope.of(ctx).hasFocus) {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}
