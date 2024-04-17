import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class AppTextStyle {
// * Navbar icon description
  static TextStyle styleCaption2(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 10,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  // * Product subtitle, ...
  static TextStyle styleCaption1(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 10,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  // * Product Description
  static TextStyle styleBody1(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  // * Labels, smaller text
  static TextStyle styleBody2Medium(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  // * Totle Price , Sort by
  static TextStyle styleBody2Bold(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  // * Old Price
  static TextStyle styleBody2Strikethrough(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  // * Search bar
  static TextStyle styleBody3(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  // * Home Title in App Bar
  static TextStyle styleHeading1(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 32,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  // * Price (Product Page)
  static TextStyle styleHeading2Extrabold(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w800,
    );
  }

  // * Browse Category
  static TextStyle styleHeading2Semibold(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  // * Old Price (Product Page)
  static TextStyle styleHeading2Strikethrough(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  // * i.e prices
  static TextStyle styleHeading3Extrabold(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w800,
    );
  }

  // * i.e. brand
  static TextStyle styleHeading3Bold(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  // * i.e. product
  static TextStyle styleHeading3Medium(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }
}
