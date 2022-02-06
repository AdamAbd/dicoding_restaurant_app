import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class CustomSection extends StatelessWidget {
  final String _title;
  final String _subtitle;
  final bool _isMore;

  const CustomSection({
    Key? key,
    required String title,
    String subtitle = 'View Detail',
    bool isMore = false,
  })  : _title = title,
        _subtitle = subtitle,
        _isMore = isMore,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _title,
                style: CustomTextStyle().semiBold.copyWith(
                      fontSize: AppFontSize.large,
                    ),
              ),
              if (_isMore)
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    _subtitle,
                    style: CustomTextStyle().medium.copyWith(
                          fontSize: AppFontSize.normal,
                          color: Colors.grey,
                        ),
                  ),
                ),
            ],
          ),
        ),
        const Gap(height: AppGap.normal),
      ],
    );
  }
}
