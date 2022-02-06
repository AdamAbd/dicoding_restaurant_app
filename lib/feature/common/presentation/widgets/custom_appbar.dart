import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool _isHome;
  final String? _title;
  final Function() _leadingPress;

  const CustomAppBar({
    Key? key,
    required bool isHome,
    String? title,
    required Function() leadingPress,
  })  : _isHome = isHome,
        _title = title,
        _leadingPress = leadingPress,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      backgroundColor: _isHome ? AppColors.white : Colors.transparent,
      leading: IconButton(
        onPressed: _leadingPress,
        splashRadius: 24,
        icon:
            Icon(_isHome ? Icons.menu : Icons.arrow_back, color: Colors.black),
      ),
      centerTitle: true,
      title: Text(
        _title ?? '',
        style: _theme.textTheme.subtitle1?.copyWith(
          color: Colors.black,
          fontSize: _theme.textTheme.subtitle1!.fontSize,
        ),
      ),
      actions: [
        if (_isHome)
          Container(
            margin: EdgeInsets.only(right: setWidth(1)),
            child: IconButton(
              onPressed: () {},
              splashRadius: 24,
              icon: Image.asset(AppIllustration.profilePic),
            ),
          ),
        if (!_isHome)
          Container(
            margin: EdgeInsets.only(right: setWidth(1)),
            child: IconButton(
              onPressed: () {},
              splashRadius: 24,
              icon: ClipOval(
                child: Container(
                  padding: EdgeInsets.all(setWidth(1.6)),
                  color: Colors.red,
                  child: Icon(
                    Icons.favorite,
                    size: setWidth(5),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
