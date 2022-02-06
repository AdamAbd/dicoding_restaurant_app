import 'package:flutter/widgets.dart';

/// Utilities for controlling the size of the gap in elements.
class AppGap {
  /// gap-size: 2.0;
  static const double tiny = 2;

  /// gap-size: 4.0;
  static const double extraSmall = 4;

  /// gap-size: 8.0;
  static const double small = 8;

  /// gap-size: 12.0;
  static const double normal = 12;

  /// gap-size: 16.0;
  static const double medium = 16;

  /// gap-size: 20.0;
  static const double large = 20;

  /// gap-size: 24.0;
  static const double extraLarge = 24;

  /// gap-size: 30.0;
  static const double big = 30;

  /// gap-size: 56.0;
  static const double dialog = 56;

  /// gap-size: 72.0;
  static const double extraBig = 72;

  /// gap-size: 92.0
  static const double giant = 148;
}

/// Utilities for controlling the size of the font in text.
class AppFontSize {
  /// font-size: 6.0;
  static const double tiny = 6;

  /// font-size: 10.0;
  static const double extraSmall = 10;

  /// font-size: 12.0;
  static const double small = 12;

  /// font-size: 14.0;
  static const double normal = 14;

  /// font-size: 16.0;
  static const double medium = 16;

  /// font-size: 18.0;
  static const double large = 18;

  /// font-size: 20.0;
  static const double extraLarge = 20;

  /// font-size: 24.0;
  static const double big = 24;
}

/// Utilities for controlling the size of radius border
class AppBorderRadius {
  /// border-radius: 4.0;
  static const double tiny = 4;

  /// border-radius: 6.0;
  static const double extraSmall = 6;

  /// border-radius: 8.0;
  static const double small = 8;

  /// border-radius: 12.0;
  static const double normal = 12;

  /// border-radius: 16.0;
  static const double medium = 16;

  /// border-radius: 20.0;
  static const double large = 20;

  /// border-radius: 24.0;
  static const double extraLarge = 24;

  /// border-radius: 32.0;
  static const double big = 32;
}

/// Utilities for controlling the size of the icon.
class AppIconSize {
  /// icon-size: 8.0;
  static const double extraTiny = 8;

  /// icon-size: 12.0;
  static const double tiny = 12;

  /// icon-size: 16.0;
  static const double extraSmall = 16;

  /// icon-size: 18.0;
  static const double small = 18;

  /// icon-size: 20.0;
  static const double normal = 20;

  /// icon-size: 22.0;
  static const double medium = 22;

  /// icon-size: 24.0;
  static const double large = 24;

  /// icon-size: 26.0;
  static const double extraLarge = 26;

  /// icon-size: 32.0;
  static const double big = 32;

  /// icon-size: 86.0;
  static const double dialog = 86;

  ///icon-size 90.0;
  static const double headToHead = 90;
}

class AppLogoSize {
  static const double extraSmall = 16;
  static const double small = 18;
  static const double normal = 48;
  static const double medium = 22;
  static const double large = 24;
  static const double extraLarge = 26;
}

class AppDotIndicatorSize {
  static const double normal = 8;
}

class PlayerDetailSize {
  /// 300.0;
  ///
  /// SliverAppBar [expandedHeight] property
  static const expandedHeight = 270.0;

  /// 100.0;
  ///
  /// image size for PlayerImage in PlayerDetailBanner
  static const playerImage = 100.0;

  /// 28.0;
  ///
  /// image size for ClubLogo in PlayerDetailBanner
  static const clubLogo = 28.0;

  /// 64.0;
  ///
  /// height for card under Season text
  static const cardInfoHeight = 64.0;

  /// 136.0;
  ///
  /// width for each card under Season text
  static const cardInfoExtent = 136.0;
}

class HomeNewsSize {
  /// 340.0
  ///
  /// [height] property for CustomCarousel
  static const double bannerHeight = 340.0;

  /// 200.0
  ///
  /// [height] property for CustomCarousel
  static const double bannerThumbnailHeight = 200.0;

  /// 1
  ///
  /// [maxLines] for title in CustomCarousel
  static const int bannerTitleMaxLines = 1;

  /// 2
  ///
  /// [maxLines] for description in CustomCarousel
  static const int bannerDescriptionMaxLines = 2;

  /// 3
  ///
  /// [itemCount] for CustomCarousel
  static const int itemCount = 3;

  /// 86
  ///
  /// [height] for image in ListView
  static const double itemHeight = 86.0;

  /// 2
  ///
  /// [maxLines] for title in ListView
  static const int itemTitleMaxLines = 2;

  /// 2
  ///
  /// [maxLines] for description in ListView
  static const int itemDescriptionMaxLines = 2;
}

class PlayerNewsSize {
  /// 350.0
  ///
  /// [height] property for CustomCarousel
  static const double bannerHeight = 350.0;

  /// 200.0
  ///
  /// [height] property for CustomCarousel
  static const double bannerThumbnailHeight = 200.0;

  /// 2
  ///
  /// [maxLines] for title in CustomCarousel
  static const int bannerTitleMaxLines = 2;

  /// 2
  ///
  /// [maxLines] for description in CustomCarousel
  static const int bannerDescriptionMaxLines = 1;

  /// 3
  ///
  /// [itemCount] for CustomCarousel
  static const int itemCount = 3;

  /// 86.0
  ///
  /// [height] for image in ListView
  static const double itemHeight = 86.0;

  /// 2
  ///
  /// [maxLines] for title in ListView
  static const int itemTitleMaxLines = 2;

  /// 2
  ///
  /// [maxLines] for description in ListView
  static const int itemDescriptionMaxLines = 2;
}

class MatchResultSize {
  /// 92.0
  ///
  /// [height]
  /// [preferredSize]
  /// height for tab bar
  static const double tabBarHeight = 90.0;

  /// 325.0
  ///
  /// [expandedHeight] property for SliverAppBar
  static const double expandedHeightComingSoon = 330.0;

  /// 360.0
  ///
  /// [expandedHeight] property for SliverAppBar
  static const double expandedHeightFinished = 410.0;

  /// 48.0
  ///
  /// [height] property for MatchResultBannerPlayerGoals
  static const double playerGoalsHeight = 48.0;

  /// 24.0
  ///
  /// [width]
  /// [height]
  /// property for goal icon
  static const double goalIcon = 24.0;
}

class MatchResultHeadToHeadSize {
  /// 28.0
  ///
  /// [size] property for ClubLogo
  static const double clubLogo = 28.0;

  /// 24.0
  ///
  /// [width] property for ResultBadge
  static const double resultBadge = 24.0;
}

class PersistentHeaderSize {
  /// 150.0
  ///
  /// [height] property for WinnerTabBarPersistentHeader
  static const double winnerHeight = 150.0;
}

class WinnerSize {
  /// 100.0
  ///
  /// [height] property for Image size in Winner Page
  static const double itemImageHeight = 100.0;
  static const double itemImageWidth = 100.0;
}

class AdaptiveRefreshIndicatorSize {
  /// 16.0
  /// 
  /// [paddingTop] property for AdaptiveLoadingindicator
  static const double paddingTopSmall = AppGap.medium;

  /// 86.0
  /// 
  /// [paddingTop] property for AdaptiveLoadingindicator
  static const double paddingTopBig = 86.0;
}

bool isTiny(BuildContext context) => MediaQuery.of(context).size.width <= 375;
