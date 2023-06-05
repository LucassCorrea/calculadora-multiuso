class Validators {
  static String? formPeso(String? value) {
    if (value!.isEmpty) {
      return "Preencha o campo";
    }
    double? newValue = double.tryParse(value);
    if (newValue == null || newValue <= 0) {
      return 'Por favor, insira um número válido';
    }
    return null;
  }
}
