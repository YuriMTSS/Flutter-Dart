// ignore_for_file: non_constant_identifier_names

import 'package:contact_list/model/contato.dart';
import 'package:contact_list/model/contatoService.dart';
import 'package:contact_list/view/busca.dart';
import 'package:contact_list/view/recursos/barraSuperior.dart';
import 'package:contact_list/view/recursos/menu.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final email = TextEditingController();
  final fone = TextEditingController();

  void Limpar() {
    nome.text = "";
    sobrenome.text = "";
    email.text = "";
    fone.text = "";
  }

  void Cadastrar() {
    ContatoService service = ContatoService();
    int ultimoID = service.listarContatos().length;

    Contato contato = Contato(
      id: ultimoID + 1,
      nome: nome.text,
      sobrenome: sobrenome.text,
      email: email.text,
      fone: fone.text,
    );

    String mensagem = service.cadastrarContato(contato);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          mensagem,
          style: TextStyle(color: Colors.grey.shade300),
        ),
        duration: const Duration(microseconds: 2000),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.grey.shade800,
      ),
    );

    Future.delayed(const Duration(microseconds: 2500), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Busca()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade800,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Cadastro de Contatos',
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 24,
                  ),
                ),
              ),
              campoInput('Nome', nome),
              campoInput('Sobrenome', sobrenome),
              campoInput('E-Mail', email),
              campoInput('Telefone', fone),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        Cadastrar();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: const Text(
                          'Cadastrar',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    );
                  }),
                  Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade600),
                      onPressed: () {
                        Limpar();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: const Text(
                          'Limpar',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container campoInput(String nomeCampo, TextEditingController controlador) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: TextField(
      controller: controlador,
      decoration: InputDecoration(
        labelText: nomeCampo,
        labelStyle: TextStyle(
          color: Colors.grey.shade300,
          fontSize: 18,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
    ),
  );
}
