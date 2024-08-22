import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej_platform/config/theme/styles/font_weight_helper.dart';

extension TextStylesExtension on ThemeData {
  //--------------Bold---------------
  TextStyle get font18OnSurfaceBold {
    return TextStyle(
      fontSize: 18.sp,
      color: colorScheme.onSurface,
      fontWeight: FontWeightHelper.bold,
    );
  }
  //--------------Medium---------------
  TextStyle get font32OnSurfaceMedium {
    return TextStyle(
 
      fontSize: 32.sp,
      color: colorScheme.onSurface,
      fontWeight: FontWeightHelper.medium,
    );
  }
   //--------------Regular---------------
  TextStyle get font24SecondaryRegular {
    return TextStyle(
      fontSize: 24.sp,
      color: colorScheme.secondary,
      fontWeight: FontWeightHelper.regular,
    );
  }

  TextStyle get font24OnSurfaceRegular {
    return TextStyle(
      fontSize: 24.sp,
      color: colorScheme.onSurface,
      fontWeight: FontWeightHelper.regular,
    );
  }
  TextStyle get font16SecondaryRegular {
    return TextStyle(
      fontSize: 16.sp,
      color: colorScheme.secondary,
      fontWeight: FontWeightHelper.regular,
    );
  }
  TextStyle get font18OnSurfaceRegular {
    return TextStyle(
      fontSize: 18.sp,
      color: colorScheme.onSurface,
      fontWeight: FontWeightHelper.regular,
    );
  }
  TextStyle get font10GreyRegular {
    return TextStyle(
      fontSize: 10.sp,
      color: Colors.grey,
      fontWeight: FontWeightHelper.regular,
    );
  }
}
