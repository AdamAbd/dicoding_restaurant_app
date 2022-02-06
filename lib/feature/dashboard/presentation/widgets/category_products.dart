import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class CategoryProducts extends StatelessWidget {
  final String _title;
  final String _price;
  final String _image;
  final String _rating;
  final Function() _press;

  const CategoryProducts({
    Key? key,
    required String title,
    required String price,
    required String image,
    required String rating,
    required Function() press,
  })  : _title = title,
        _price = price,
        _image = image,
        _press = press,
        _rating = rating,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return GestureDetector(
      onTap: _press,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: const EdgeInsets.all(AppGap.small),
            decoration: BoxDecoration(
              color: WrapperColors.white,
              borderRadius: BorderRadius.circular(AppBorderRadius.large),
              boxShadow: [
                BoxShadow(
                  color: ProfileColor.pictureShadow.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppBorderRadius.large),
                    image: DecorationImage(
                      image: NetworkImage(_image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap(width: AppGap.medium),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: CustomTextStyle().semiBold.copyWith(
                              fontSize: AppFontSize.medium,
                            ),
                      ),
                      const Gap(height: AppGap.extraSmall),
                      Text(
                        _price,
                        style: CustomTextStyle().regular.copyWith(
                              fontSize: AppFontSize.medium,
                            ),
                      ),
                      const Gap(height: AppGap.extraSmall),
                      Row(
                        children: [
                          Text(
                            _rating,
                            style: CustomTextStyle().regular.copyWith(
                                  fontSize: AppFontSize.medium,
                                ),
                          ),
                          const Icon(Icons.star_rounded, color: Colors.amber),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            splashRadius: 1,
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outlined,
              color: Colors.redAccent,
              size: setWidth(6),
            ),
          ),
        ],
      ),
    );
  }
}
