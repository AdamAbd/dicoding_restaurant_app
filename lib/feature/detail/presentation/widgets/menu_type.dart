import 'dart:math';

import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class MenusType extends StatelessWidget {
  const MenusType({
    Key? key,
    required DetailPageArguments? data,
    required bool isMenuType,
  })  : _data = data,
        _isMenuType = isMenuType,
        super(key: key);

  final DetailPageArguments? _data;
  final bool _isMenuType;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isMenuType,
      replacement: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final _item = _data?.restaurant.menus!.drinks?[index];

            Random _random = Random();

            return Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                bottom: 20.0,
              ),
              child: CategoryProducts(
                title: _item!.name.toString().toUpperCase(),
                price: 'Rp. 10.000,00',
                image:
                    "https://source.unsplash.com/collection/6795327/48${index}x4${index + 2}0",
                rating: '${_random.nextInt(5) + 1}.${_random.nextInt(5)}',
                press: () {},
              ),
            );
          },
          childCount: _data?.restaurant.menus!.drinks!.length,
        ),
      ),
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final _item = _data?.restaurant.menus!.foods?[index];

            Random _random = Random();

            return Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                bottom: 20.0,
              ),
              child: CategoryProducts(
                title: _item!.name.toString().toUpperCase(),
                price: 'Rp. 20.000,00',
                image:
                    "https://source.unsplash.com/collection/1184639/4${index + 2}0x48$index",
                rating: '${_random.nextInt(5) + 1}.${_random.nextInt(5)}',
                press: () {},
              ),
            );
          },
          childCount: _data?.restaurant.menus!.foods!.length,
        ),
      ),
    );
  }
}
