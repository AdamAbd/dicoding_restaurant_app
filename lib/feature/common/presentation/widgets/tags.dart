import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final String _icon;
  final String _title;
  final bool _isActive;

  const Tags({
    Key? key,
    required String icon,
    required String title,
    bool isActive = false,
  })  : _icon = icon,
        _title = title,
        _isActive = isActive,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 22,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: _isActive ? Colors.redAccent : Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: _isActive
                ? Colors.redAccent.withOpacity(0.5)
                : Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Visibility(
            visible: _icon.isNotEmpty,
            child: Text(
              "$_icon ",
              style: CustomTextStyle().medium.copyWith(
                    fontSize: AppFontSize.medium,
                    height: 1.4,
                  ),
            ),
          ),
          Text(
            _title,
            style: CustomTextStyle().medium.copyWith(
                  fontSize: AppFontSize.medium,
                  color: _isActive ? Colors.white : Colors.black,
                ),
          ),
        ],
      ),
    );
  }
}
