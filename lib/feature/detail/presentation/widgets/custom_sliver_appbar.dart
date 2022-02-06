import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
    required DetailPageArguments? data,
  })  : _data = data,
        super(key: key);

  final DetailPageArguments? _data;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 350,
      pinned: true,
      backgroundColor: Colors.redAccent,
      title: Text(_data?.restaurant.name ?? ""),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          _data?.restaurant.pictureId ?? "",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
