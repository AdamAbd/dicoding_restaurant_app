import 'package:flutter/material.dart';

/// [AppColors] stands for color usage on our app.
class AppColors {
  /// Purple
  static const Color primary = Color(0xFF8F2FA2);
  static const Color primaryLight = Color(0xFFEBD9F0);
  static const Color primaryDark = Color(0xFF460E50);
  static const Color secondary = Color(0xFF571F64);
  static const Color secondaryDark = Color(0xFF3E2344);

  /// Black
  static const Color blackPrimary = Color(0xFF1F1F1F);
  static const Color blackPrimaryDark = Colors.black;

  /// Grey
  static const Color greyPrimary = Color(0xFFA3A3A3);
  static const Color greySecondary = Color(0xFFE9E9E9);
  static const Color greySecondaryLight = Color(0xFFFAFAFA);
  static const Color greyPrimaryLight = Color(0xFFD8D5D5);
  static const Color greyPrimaryDark = Color(0xFF212121);
  static const Color greyTertiary = Color(0xFF4B4B4B);

  /// Red
  static const Color redPrimary = Color(0xFFEB0000);
  static const Color redPrimaryDark = Color(0xFF970000);

  /// Magenta
  static const Color magentaPrimary = Color(0xFFC72A4E);
  static const Color magentaPrimaryDark = Color(0xFFC15279);

  /// Blue
  static const Color bluePrimary = Color(0xFF75FBFD);
  static const Color bluePrimaryDark = Color(0xFF4678B2);
  static const Color blueSecondary = Color(0xFF102A85);
  static const Color blueSecondaryDark = Color(0xFF111111);

  /// Green
  static const Color greenPrimary = Color(0xFF91D14A);
  static const Color greenPrimaryLight = Color(0xFFE2FEC0);
  static const Color greenPrimaryDark = Color(0xFF284F19);
  static const Color greenSecondary = Color(0xFF296218);
  static const Color greenSecondaryDark = Color(0xFF4B841B);

  /// Single Color
  static const Color orange = Color(0xFFF75935);
  static const Color yellow = Color(0xFFFFFF54);
  static const Color white = Colors.white;
}

class ButtonColors {
  static const Color primary = AppColors.greenPrimary;
  static const Color primaryDark = AppColors.greenPrimaryDark;
  static const Color secondary = AppColors.bluePrimary;
  static const Color tertiary = AppColors.magentaPrimary;
  static const Color quaternary = AppColors.magentaPrimary;
  static const Color quinary = AppColors.redPrimary;
  static const Color senary = AppColors.primary;
  static const Color senaryDark = AppColors.primaryDark;
  static const Color septenary = AppColors.greyPrimaryDark;
  static const Color septenaryLight = AppColors.greyPrimaryLight;
  static const Color border = AppColors.primaryLight;
  static const Color cancel = AppColors.greyPrimary;
  static const Color information = AppColors.bluePrimaryDark;
  static const Color white = AppColors.white;
  static const Color black = Colors.black;
}

class TabBarColors {
  static const Color primary = AppColors.greySecondary;
  static const Color primaryInactive = AppColors.greyPrimary;
  static const Color secondary = AppColors.primary;
  static const Color secondaryDark = AppColors.primaryDark;
  static const Color tertiary = AppColors.bluePrimary;
  static const Color white = AppColors.white;
}

class ScaffoldColors {
  static const Color primary = AppColors.greySecondary;
  static const Color secondary = AppColors.white;
}

class AppBarColors {
  static const Color background = AppColors.blackPrimaryDark;
  static const Color icon = AppColors.white;
}

class WrapperColors {
  static const Color primary = AppColors.primary;
  static const Color primaryLight = AppColors.primaryLight;
  static const Color primaryDark = AppColors.primaryDark;
  static const Color secondary = AppColors.greyPrimary;
  static const Color secondaryLight = AppColors.greyPrimaryLight;
  static const Color secondaryDark = AppColors.greyPrimaryDark;
  static const Color quaternary = AppColors.greySecondary;
  static const Color quaternaryLight = AppColors.greySecondaryLight;
  static const Color tertiary = AppColors.magentaPrimaryDark;
  static const Color quinary = AppColors.bluePrimary;
  static const Color senary = AppColors.greenPrimary;
  static const Color senaryDark = AppColors.greenSecondaryDark;
  static const Color septenary = AppColors.secondary;
  static const Color septenaryDark = AppColors.secondaryDark;
  static const Color white = AppColors.white;
  static const Color black = Colors.black;
}

class TextColors {
  static const Color primary = AppColors.greyPrimary;
  static const Color primaryDark = AppColors.greyPrimaryDark;
  static const Color primaryLight = AppColors.greyPrimaryLight;
  static const Color secondary = AppColors.primary;
  static const Color secondaryDark = AppColors.primaryDark;
  static const Color tertiary = AppColors.greenPrimary;
  static const Color quaternary = AppColors.bluePrimaryDark;
  static const Color quinary = AppColors.redPrimaryDark;
  static const Color white = AppColors.white;
  static const Color black = Colors.black;
}

class StateColors {
  static const Color success = AppColors.greenPrimary;
  static const Color warning = AppColors.orange;
  static const Color error = AppColors.redPrimary;
}

class TextFieldColors {
  static const Color background = AppColors.white;
  static const Color text = AppColors.blackPrimaryDark;
  static const Color hint = AppColors.greyPrimary;
  static const Color icon = AppColors.primary;
  static const Color enabledBorder = AppColors.greyPrimary;
  static const Color focusedBorder = AppColors.primary;
}

class IconColors {
  static const Color primary = AppColors.greyPrimary;
  static const Color primaryDark = AppColors.greyPrimaryDark;
  static const Color primaryLight = AppColors.greyPrimaryLight;
  static const Color secondary = AppColors.primary;
  static const Color secondaryDark = AppColors.primaryDark;
  static const Color tertiary = AppColors.greenPrimary;
  static const Color quaternary = AppColors.redPrimary;
  static const Color quaternaryDark = AppColors.redPrimaryDark;
  static const Color white = AppColors.white;
  static const Color black = Colors.black;
}

class DotIndicatorColors {
  static const Color active = AppColors.primaryDark;
  static const Color inactive = AppColors.greyPrimaryLight;
}

class TableColors {}

class TopPlayerColors {
  static const Color rankFirst = AppColors.magentaPrimary;
  static const Color rankSecond = AppColors.orange;
  static const Color rankThird = AppColors.bluePrimaryDark;
  static const Color rankFourth = AppColors.greenPrimary;
  static const Color rankFifth = AppColors.magentaPrimaryDark;
  static const Color rankSixth = AppColors.magentaPrimary;
  static const Color rankSeventh = AppColors.magentaPrimary;
}

class TablePlayerColors {
  static const Color primary = AppColors.greenPrimary;
  static const Color headerOdd = AppColors.greyPrimaryDark;
  static const Color headerEven = AppColors.greyTertiary;
  static const Color headerText = AppColors.white;
  static const Color columnOdd = AppColors.greySecondary;
  static const Color columnEven = AppColors.white;
  static const Color bodyText = AppColors.blackPrimary;
  static const Color rowOdd = AppColors.white;
  static const Color rowEven = AppColors.greySecondaryLight;
}

class MatchResultHeadToHeadColors {
  static const Color goalsScored = AppColors.greyPrimary;
  static const Color goalsScoredHome = AppColors.secondaryDark;
  static const Color goalsScoredAway = AppColors.redPrimaryDark;
  static const Color resultBackgroundDraw = AppColors.greyPrimaryLight;
  static const Color resultBackgroundLose = AppColors.redPrimaryDark;
  static const Color resultBackgroundWin = AppColors.greenSecondary;
  static const Color resultTextDraw = AppColors.blackPrimary;
  static const Color resultTextNotDraw = AppColors.white;
  static const Color tableBorder = AppColors.greyPrimaryLight;
  static const Color tableRowOdd = AppColors.greySecondaryLight;
  static const Color tableRowEven = AppColors.white;
  static const Color tableWinScore = AppColors.greenSecondary;
  static const Color tableLoseScore = AppColors.redPrimaryDark;
  static const Color tableDrawScore = AppColors.blackPrimary;
  static const Color tableDate = AppColors.greyPrimary;
  static const Color tableText = AppColors.blackPrimary;
}

class MatchResultPredictionColors {
  static const Color probabilityBackgroundHome = AppColors.secondaryDark;
  static const Color probabilityBackgroundDraw = AppColors.greyPrimaryLight;
  static const Color probabilityBackgroundAway = AppColors.redPrimaryDark;
  static const Color probabilityTextPercentHome = AppColors.secondaryDark;
  static const Color probabilityTextPercentDraw = AppColors.greyPrimaryLight;
  static const Color probabilityTextPercentAway = AppColors.redPrimaryDark;
  static const Color probabilityTextTitle = AppColors.greyPrimary;
  static const Color predictionBannerBackground = AppColors.magentaPrimary;
  static const Color predictionBannerText = AppColors.white;
  static const Color predictionBannerIcon = AppColors.white;
  static const Color probabilityBackgroundOrange = AppColors.orange;
  static const Color probabilityBackgroundDarkRed = AppColors.redPrimaryDark;
  static const Color probabilityTextOrange = AppColors.orange;
  static const Color probabilityTextDarkRed = AppColors.redPrimaryDark;
  static const Color scoreProbabilityTableRowOdd = AppColors.white;
  static const Color scoreProbabilityTableRowEven = Colors.transparent;
  static const Color scoreProbabilityTableBackgroundPredicted =
      AppColors.secondaryDark;
  static const Color scoreProbabilityTableBackgroundRemainder =
      AppColors.greySecondaryLight;
  static const Color scoreProbabilityTableTextPredicted =
      AppColors.secondaryDark;
  static const Color scoreProbabilityTableTextRemainder =
      AppColors.redPrimaryDark;
  static const Color scoreProbabilityTableText = AppColors.blackPrimary;
  static const Color scoreProbabilityTableBorder = AppColors.greyPrimary;
}

class MatchResultPlayersColors {
  static const Color tableHeaderBackground = AppColors.magentaPrimary;
  static const Color tableHeaderText = AppColors.white;
  static const Color tableBodyText = AppColors.blackPrimary;
  static const Color tableBorder = AppColors.greySecondary;
}

class MatchResultStatsColors {
  static const Color linearPercentIndicatorLeftFill = AppColors.primaryDark;
  static const Color linearPercentIndicatorRightFill = AppColors.primary;
  static const Color linearPercentIndicatorLabel = AppColors.white;
  static const Color tableBorder = AppColors.greySecondary;
}

class MatchResultTimelineColors {}

class MatchResultLineupsColors {
  static const Color text = AppColors.white;
  static const Color background = AppColors.greenSecondaryDark;
  static const Color homeCircleBackground = AppColors.orange;
  static const Color homeCaptainCircleBackground = AppColors.blueSecondary;
  static const Color awayCircleBackground = AppColors.blueSecondaryDark;
  static const Color awayCaptainCircleBackground = AppColors.redPrimaryDark;
  static const Color yellowCard = AppColors.yellow;
  static const Color downArrow = AppColors.redPrimaryDark;
}

class LoginColor {
  static const Color suffixIconActive = AppColors.primary;
  static const Color suffixIconInactive = AppColors.greyPrimary;
  static const Color text = AppColors.greenPrimary;
  static const Color successSnackBar = Colors.green;
  static const Color failedSnackBar = Colors.red;
}

class ForgotPasswordColor {
  static const Color text = AppColors.greenPrimary;
}

class SignUpColor {
  static const Color text = AppColors.greenPrimary;
}

class InputOTPSignUpColor {
  static const Color text = AppColors.greenPrimary;
}

class RewardColor {
  static const Color refresh = AppColors.primary;
  static const Color buttonActive = AppColors.bluePrimary;
  static const Color buttonInactive = AppColors.primaryLight;
  static const Color text = AppColors.greenPrimary;
}

class BannerRewardColor {
  static const Color footer = AppColors.blackPrimaryDark;
}

class BannerDetailColor {
  static const Color devider = AppColors.primary;
}

class ContestHistoryColor {
  static const Color refresh = AppColors.primary;
  static const Color tableBorder = AppColors.greyPrimaryLight;
  static const Color tableHead = AppColors.bluePrimary;
  static const Color resultFinished = Colors.green;
  static const Color resultUpcomming = AppColors.redPrimaryDark;
}

class ProfileColor {
  static const Color devider = AppColors.primary;
  static const Color dropDownBorder = AppColors.greyPrimary;
  static const Color backgroundTextField = AppColors.greySecondary;
  static const Color pictureBorder = AppColors.white;
  static const Color pictureShadow = Colors.grey;
  static const Color backgroundPointCard = AppColors.greySecondary;
}
