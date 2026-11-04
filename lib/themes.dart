import 'package:flutter/material.dart';
import 'package:kasirku/colors.dart';

class AppThemes {
  static ThemeData get light {
    return ThemeData(
      fontFamily: 'Poppins',
      primaryColor: AppColors.primary,
      dividerColor: AppColors.secondary,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: ColorScheme.light(secondary: AppColors.secondary),
      appBarTheme: AppBarThemeData(
        backgroundColor: AppColors.white,
        titleSpacing: 24,
        foregroundColor: AppColors.primary,
        surfaceTintColor: AppColors.white,
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: AppColors.secondary),
        fillColor: WidgetStateProperty.fromMap({
          WidgetState.selected: AppColors.primary,
        }),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      dividerTheme: DividerThemeData(color: AppColors.secondary, thickness: 1),
      textTheme: textTheme,
      inputDecorationTheme: InputDecorationThemeData(
        filled: true,
        fillColor: AppColors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.secondary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.secondary),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: AppColors.secondary.withValues(alpha: .7),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.danger),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.danger),
        ),
        outlineBorder: BorderSide(color: AppColors.secondary),
        hintStyle: textTheme.bodyMedium,
        errorStyle: textTheme.bodyMedium?.copyWith(color: AppColors.danger),
        labelStyle: textTheme.bodyMedium,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          textStyle: textTheme.titleMedium,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 8,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondary,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  static TextTheme get textTheme {
    return TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontFamily: 'Poppins',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontFamily: 'Poppins',
      ),
      bodySmall: TextStyle(
        fontSize: 10,
        color: AppColors.secondary,
        fontFamily: 'Poppins',
      ),
      headlineLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: 32,
        fontFamily: 'Poppins',
      ),
      headlineMedium: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: 28,
        fontFamily: 'Poppins',
      ),
      headlineSmall: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: 26,
        fontFamily: 'Poppins',
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: 22,
        fontFamily: 'Poppins',
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        fontFamily: 'Poppins',
      ),
      labelLarge: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.secondary,
        fontFamily: 'Poppins',
      ),
      labelSmall: TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
        fontFamily: 'Poppins',
      ),
    );
  }
}
