import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? theme.textTheme.headlineLarge,
        hintStyle: hintStyle ?? theme.textTheme.headlineLarge,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 64.h,
          fieldWidth: 64.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16.h),
          inactiveColor: appTheme.purple200,
          activeColor: appTheme.purple200,
          inactiveFillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          activeFillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          selectedColor: Colors.transparent,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
