// ignore_for_file: file_names

import 'package:contact_list/model/contato.dart';

class ContatoService {
  static List<Contato> contatos = [];

  String cadastrarContato(Contato contato) {
    contatos.add(contato);
    return "Novo contato: ${contato.nome} ${contato.sobrenome}";
  }

  List listarContatos() {
    contatos = [];

    return contatos;
  }
}
