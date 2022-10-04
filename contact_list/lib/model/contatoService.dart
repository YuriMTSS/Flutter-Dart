// ignore_for_file: file_names

import 'package:contact_list/model/contato.dart';

class ContatoService {
  List listarContatos() {
    List<Contato> contatos = [
      Contato(
          id: 1,
          nome: 'Albert',
          sobrenome: 'Einstein',
          email: 'A@gmail.com',
          fone: '(85) 99999999',
          foto: 'assets/pessoas/einstein.png'),
      Contato(
          id: 2,
          nome: 'Issac',
          sobrenome: 'Newton',
          email: 'I@gmail.com',
          fone: '(85) 98999999',
          foto: 'assets/pessoas/isaac.png'),
    ];

    return contatos;
  }
}
