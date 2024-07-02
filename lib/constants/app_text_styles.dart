import 'package:compitition_team_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle txtWhite = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    color: AppColors.whiteColor,
  );

  static const TextStyle txtWhiteBold = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );

  static const TextStyle txtBlack = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    color: AppColors.blackColor,
  );

  static const TextStyle txtBlackBold = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );

  static const TextStyle txtGreen = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    color: AppColors.greenColor,
  );

  static const TextStyle txtGreenBold = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.greenColor,
  );

  static const TextStyle txtPurple = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    color: AppColors.purpleColor,
  );

  static const TextStyle txtPurpleBold = TextStyle(
    fontFamily: "Space_Mono",
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.purpleColor,
  );
}

// to use these style and change any property in it use as follow:
//style: AppTextStyles.txtWhite.copyWith(fontSize: 26.0)
