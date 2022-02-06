import 'package:flutter/material.dart';
import 'package:dicoding_restaurant_app/feature/feature.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<BottomNavigationEntity> _listBottomNavigationEntity =
      HomeDummyDataSource.listHomeNavigation;

  @override
  Widget build(BuildContext context) {
    SizeConfiguration().init(context);
    // final _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: ScaffoldColors.secondary,
      appBar: CustomAppBar(isHome: true, title: 'WELCOME', leadingPress: () {}),
      body: [
        const DashboardPage(),
        Center(
          child: Text(
            'Comming Soon',
            style: CustomTextStyle().medium.copyWith(
                  fontSize: AppFontSize.big,
                  color: Colors.blue,
                ),
          ),
        ),
        Center(
          child: Text(
            'Comming Soon',
            style: CustomTextStyle().medium.copyWith(
                  fontSize: AppFontSize.big,
                  color: Colors.amber,
                ),
          ),
        ),
        Center(
          child: Text(
            'Comming Soon',
            style: CustomTextStyle().medium.copyWith(
                  fontSize: AppFontSize.big,
                  color: Colors.red,
                ),
          ),
        ),
      ][_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        listBottomNavigationEntity: _listBottomNavigationEntity,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
