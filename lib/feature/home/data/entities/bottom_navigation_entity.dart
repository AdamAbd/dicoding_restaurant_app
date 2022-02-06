import 'package:flutter/material.dart';

class BottomNavigationEntity {
  final IconData iconData;
  final String label;

  const BottomNavigationEntity({
    required this.iconData,
    required this.label,
  });
}

class HomeDummyDataSource {
  static const List<BottomNavigationEntity> listHomeNavigation = [
    BottomNavigationEntity(
      iconData: Icons.home_rounded,
      label: "Home",
    ),
    BottomNavigationEntity(
      iconData: Icons.window_rounded,
      label: "Menu",
    ),
    BottomNavigationEntity(
      iconData: Icons.shopping_cart_rounded,
      label: "Cart",
    ),
    BottomNavigationEntity(
      iconData: Icons.person_rounded,
      label: "Profile",
    ),
  ];
}
