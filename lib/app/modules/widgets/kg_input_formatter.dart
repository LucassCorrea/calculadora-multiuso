import 'package:flutter/services.dart';

class KgInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    double value = double.parse(newValue.text);

    String newText = value.toStringAsFixed(2);

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(
        offset: newText.length - 3,
        affinity: TextAffinity.upstream,
      ),
    );
  }
}
