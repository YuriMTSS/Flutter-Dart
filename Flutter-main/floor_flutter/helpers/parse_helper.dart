// Utilizaremos para definir o método de conversão dos campos do formulário de texto para double.

class ParseHelper {
  static double toDouble(String value) {
    return double.tryParse(value.replaceAll(',', '.')) ?? 0.0;
  }
}
