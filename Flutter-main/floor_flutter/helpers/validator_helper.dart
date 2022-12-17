// Utilizaremos para definir o método de validações dos campos do formulário.

class ValidatorHelper {
  static String? isValidText(String? text) {
    return text == null || text.isEmpty ? 'Campo obrigatório' : null;
  }
}
