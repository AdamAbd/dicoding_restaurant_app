import 'package:dicoding_restaurant_app/feature/feature.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _tags = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfiguration().init(context);
    final _theme = Theme.of(context);

    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          unfocus(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Let\'s find your place!',
                style: CustomTextStyle().medium.copyWith(
                      fontSize: AppFontSize.large,
                    ),
              ),
            ),
            const Gap(height: AppGap.normal),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0XFFF4F4FC),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                onChanged: (value) {},
                focusNode: FocusNode(),
                textInputAction: TextInputAction.search,
                keyboardType: TextInputType.text,
                style: CustomTextStyle().semiBold.copyWith(
                      fontSize: AppFontSize.normal,
                      height: 1.6,
                    ),
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 25,
                  ),
                  hintText: "Search Location",
                  border: InputBorder.none,
                ),
              ),
            ),
            const Gap(height: AppGap.large),
            const CustomSection(title: 'Categories'),
            SizedBox(
              height: 48,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _tags = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: index == categories.length - 1 ? 40 : 4,
                        left: index == 0 ? 40 : 12,
                      ),
                      child: Tags(
                        icon: categories[index].icon,
                        title: categories[index].name,
                        isActive: index == _tags,
                      ),
                    ),
                  );
                },
              ),
            ),
            const Gap(height: AppGap.large),
            Visibility(
              visible: _tags == 0 || _tags == 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: FutureBuilder<String>(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/json/restaurant.json'),
                  builder: (context, snapshot) {
                    final restaurant =
                        parseRestaurant(snapshot.data).restaurants;

                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: restaurant?.length ?? 0,
                      itemBuilder: (context, index) {
                        final _data = restaurant?[index];

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: CategoryProducts(
                            title: _data!.name.toString(),
                            price: _data.city.toString(),
                            image: _data.pictureId.toString(),
                            rating: _data.rating.toString(),
                            press: () {
                              Navigator.pushNamed(
                                context,
                                PagePath.detail,
                                arguments:
                                    DetailPageArguments(restaurant![index]),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            const Gap(height: AppGap.large),
          ],
        ),
      ),
    );
  }
}
