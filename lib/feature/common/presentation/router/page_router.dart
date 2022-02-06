import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../feature.dart';

class PageRouter {
  Route<dynamic>? getRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {

      /* Splash */
      case PagePath.splash:
        {
          return _buildRouter(
            settings: settings,
            builder: (args) => const HomePage(),
          );
        }

      case PagePath.dashboard:
        {
          return _buildRouter(
            settings: settings,
            builder: (args) => const HomePage(),
          );
        }

      case PagePath.detail:
        {
          return _buildRouter(
            settings: settings,
            builder: (args) => const DetailPage(),
          );
        }

      default:
        return null;
    }
  }

  Route<dynamic> _buildRouter({
    required RouteSettings settings,
    required Widget Function(Object? arguments) builder,
  }) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (_) => builder(settings.arguments),
      );
    } else {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => builder(settings.arguments),
      );
    }
  }
}
