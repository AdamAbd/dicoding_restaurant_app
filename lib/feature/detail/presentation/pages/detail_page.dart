import 'dart:math';

import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class DetailPageArguments {
  final Restaurants restaurant;

  DetailPageArguments(this.restaurant);
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _menuTypes = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfiguration().init(context);
    final _theme = Theme.of(context);

    final _arguments = ModalRoute.of(context)!.settings.arguments;
    final _data = _arguments == null ? null : _arguments as DetailPageArguments;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(data: _data),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(height: AppGap.normal),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _data?.restaurant.name ?? "",
                        style: CustomTextStyle().semiBold.copyWith(
                              fontSize: AppFontSize.large,
                            ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outlined,
                          color: Colors.redAccent,
                          size: AppIconSize.medium,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.place_outlined,
                        color: Colors.redAccent,
                        size: AppIconSize.small,
                      ),
                      const Gap(width: AppGap.small),
                      Text(
                        _data?.restaurant.city ?? "",
                        style: CustomTextStyle().regular.copyWith(
                              fontSize: AppFontSize.normal,
                            ),
                      ),
                    ],
                  ),
                  const Gap(height: AppGap.small),
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: Colors.redAccent,
                        size: AppIconSize.small,
                      ),
                      const Gap(width: AppGap.small),
                      Text(
                        "2 Hour From Your Location",
                        style: CustomTextStyle().regular.copyWith(
                              fontSize: AppFontSize.normal,
                            ),
                      ),
                    ],
                  ),
                  const Gap(height: AppGap.normal),
                  Text(
                    "Description",
                    style: CustomTextStyle().semiBold.copyWith(
                          fontSize: AppFontSize.large,
                        ),
                  ),
                  const Gap(height: AppGap.normal),
                  Text(
                    _data?.restaurant.description ?? "",
                    style: CustomTextStyle().regular.copyWith(
                          fontSize: AppFontSize.normal,
                          height: 1.4,
                        ),
                  ),
                  const Gap(height: AppGap.normal),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Menus",
                          style: CustomTextStyle().semiBold.copyWith(
                                fontSize: AppFontSize.large,
                              ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _menuTypes = 0;
                          });
                        },
                        child: Tags(
                          icon: "",
                          title: "Foods",
                          isActive: _menuTypes == 0,
                        ),
                      ),
                      const Gap(width: AppGap.normal),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _menuTypes = 1;
                          });
                        },
                        child: Tags(
                          icon: "",
                          title: "Drinks",
                          isActive: _menuTypes == 1,
                        ),
                      ),
                    ],
                  ),
                  const Gap(height: AppGap.normal),
                ],
              ),
            ),
          ),
          MenusType(data: _data, isMenuType: _menuTypes == 0),
          const SliverToBoxAdapter(child: Gap(height: AppGap.normal)),
        ],
      ),
    );
  }
}
