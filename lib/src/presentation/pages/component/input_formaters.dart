import 'package:flutter/services.dart';

class InternationalPhoneFormatter extends TextInputFormatter {
  String internationalPhoneFormat(value) {
    String nums = value.replaceAll(RegExp(r'[\D]'), '');

    String internationalPhoneFormatted = nums.isNotEmpty
        ? '+7${nums.length > 1 ? ' (' : ''}${nums.substring(1, nums.length >= 4 ? 4 : null)}${nums.length > 4 ? ') ' : ''}${nums.length > 4 ? nums.substring(4, nums.length >= 7 ? 7 : null) + (nums.length > 7 ? '-${nums.substring(7, nums.length >= 9 ? 9 : null)}' : '') + (nums.length > 9 ? '-${nums.substring(9, nums.length >= 11 ? 11 : null)}' : '') : ''}'
        : nums;
    return internationalPhoneFormatted;
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    return newValue.copyWith(
        text: internationalPhoneFormat(text),
        selection: TextSelection.collapsed(
            offset: internationalPhoneFormat(text).length));
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$')
        .hasMatch(this);
  }
}

class DateInputFormater extends TextInputFormatter {
  String dateInputFormatter(value) {
    String nums = value.replaceAll(RegExp(r'[\D]'), '');
    String internationalPhoneFormatted = nums.isNotEmpty
        ? '${nums.substring(0, (nums.length >= 2) ? 2 : null)}${nums.length > 2 ? '.' : ''}${nums.length > 2 ? nums.substring(2, nums.length >= 4 ? 4 : null) : ''}${nums.length > 4 ? '.' : ''}${nums.length > 4 ? nums.substring(4, nums.length >= 8 ? 8 : null) : ''}'
        : nums;
    return internationalPhoneFormatted;
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    return newValue.copyWith(
        text: dateInputFormatter(text),
        selection:
            TextSelection.collapsed(offset: dateInputFormatter(text).length));
  }
}
