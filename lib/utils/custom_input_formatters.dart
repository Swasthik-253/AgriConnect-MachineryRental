import 'package:flutter/services.dart';

class CustomInputFormatters {
  CustomInputFormatters._();

  static List<TextInputFormatter> get phoneNumberFormatter => [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ];

  static List<TextInputFormatter> get amountFormatter => [
        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
      ];

  static List<TextInputFormatter> get nameFormatter => [
        FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+$')),
      ];
}
