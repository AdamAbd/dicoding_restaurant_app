import 'dart:io';

import 'package:dicoding_restaurant_app/feature/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalyTheme {
  ThemeData of(BuildContext context) {
    final _theme = Theme.of(context);
    return _theme.copyWith(
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primaryDark,
      colorScheme: _theme.colorScheme.copyWith(
        primary: AppColors.primary,
        secondary: AppColors.primary,
      ),
      scaffoldBackgroundColor: ScaffoldColors.primary,
      splashColor: Platform.isAndroid
          ? AppColors.greyPrimaryLight.withOpacity(0.2)
          : Colors.transparent,
      highlightColor: AppColors.greyPrimaryLight.withOpacity(0.4),
      appBarTheme: _theme.appBarTheme.copyWith(
        color: AppBarColors.background,
        iconTheme: _theme.iconTheme.copyWith(
          color: AppBarColors.icon,
          size: AppIconSize.normal,
        ),
      ),
      snackBarTheme: _theme.snackBarTheme.copyWith(
        elevation: 5,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppBorderRadius.small,
          ),
        ),
        disabledActionTextColor: TextColors.white,
        actionTextColor: TextColors.white,
      ),
      cardTheme: _theme.cardTheme.copyWith(
        margin: EdgeInsets.zero,
        color: WrapperColors.white,
        elevation: 4,
        shadowColor: ScaffoldColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.small),
        ),
      ),
      tabBarTheme: _theme.tabBarTheme.copyWith(
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: TextColors.secondary,
      ),
      dividerTheme: _theme.dividerTheme.copyWith(
        color: WrapperColors.secondaryLight,
      ),
      textTheme: _theme.textTheme.apply(
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      textSelectionTheme: _theme.textSelectionTheme.copyWith(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary.withOpacity(0.4),
        selectionHandleColor: AppColors.primary,
      ),
      inputDecorationTheme: _theme.inputDecorationTheme.copyWith(
        isDense: true,
        hintStyle: CustomTextStyle().regular.copyWith(
              color: TextFieldColors.hint,
            ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppGap.normal,
          horizontal: AppGap.medium,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppBorderRadius.extraSmall),
          ),
          borderSide: BorderSide(
            width: 1.5,
            color: TextFieldColors.enabledBorder,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppBorderRadius.extraSmall),
          ),
          borderSide: BorderSide(
            width: 1.5,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
