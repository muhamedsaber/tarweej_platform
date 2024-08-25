import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej_platform/config/theme/styles/text_styles.dart';
import 'package:tarweej_platform/core/helpers/extensions.dart';
import 'package:tarweej_platform/core/helpers/size.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key, this.controller, this.hintText, this.validator});
  final String? hintText;
  final String? Function(String? word)? validator;
  final TextEditingController? controller;
  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode focusNode;
  late Color fillColor;
  @override
  void initState() {
    log("initState");
    focusNode = FocusNode();
    focusNode.addListener(updateFillColor);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    fillColor = context.theme.colorScheme.surface;
    super.didChangeDependencies();
  }

  updateFillColor() {
    fillColor = focusNode.hasFocus
        ? context.theme.scaffoldBackgroundColor
        : context.theme.colorScheme.surface;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      focusNode: focusNode,
      style:
          context.theme.font18OnSurfaceRegular.copyWith(decorationThickness: 0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 12.h,
        ),
        hintStyle: context.theme.font16SecondaryRegular,
        hintText: widget.hintText,
        fillColor: fillColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.circularAll15,
          borderSide: BorderSide(
            color: context.theme.colorScheme.secondary,
            width: 1.6,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.r),
          borderSide: BorderSide(
            color: context.theme.colorScheme.secondary,
            width: 1.6,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.r),
          borderSide: BorderSide(
            color: context.theme.colorScheme.secondary,
            width: 1.6,
          ),
        ),
        errorStyle: context.theme.font14ErrorRegular,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.r),
          borderSide: BorderSide(
            color: context.theme.colorScheme.error,
            width: 1.6,
          ),
        ),
      ),
    );
  }
}
