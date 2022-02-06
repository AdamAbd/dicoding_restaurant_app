import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<BottomNavigationEntity> _listBottomNavigationEntity;
  final int _currentIndex;
  final Function(int) _onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required List<BottomNavigationEntity> listBottomNavigationEntity,
    required int currentIndex,
    required Function(int) onTap,
  })  : _listBottomNavigationEntity = listBottomNavigationEntity,
        _currentIndex = currentIndex,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -4),
            color: _theme.shadowColor.withOpacity(0.6),
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        // unselectedFontSize: 0,
        // selectedFontSize: 0,
        iconSize: _theme.bottomNavigationBarTheme.selectedIconTheme?.size ?? 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          _onTap(index);
        },
        items: [
          ...List.generate(_listBottomNavigationEntity.length, (index) {
            final _item = _listBottomNavigationEntity[index];

            return BottomNavigationBarItem(
              icon: SizedBox(
                height: AppGap.big,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _item.iconData,
                      size: AppIconSize.large,
                      color: Colors.black,
                      // size: _currentIndex == index
                      //     ? _theme
                      //         .bottomNavigationBarTheme.selectedIconTheme!.size
                      //     : _theme.bottomNavigationBarTheme.selectedIconTheme!
                      //             .size! -
                      //         1,
                    ),
                    if (_currentIndex == index)
                      ClipOval(
                        child: Container(
                          width: AppGap.extraSmall,
                          height: AppGap.extraSmall,
                          color: Colors.black,
                          // _theme.bottomNavigationBarTheme.selectedItemColor,
                        ),
                      )
                    else
                      const SizedBox(),
                  ],
                ),
              ),
              label: "",
              tooltip: _item.label,
            );
          })
        ],
      ),
    );
  }
}
