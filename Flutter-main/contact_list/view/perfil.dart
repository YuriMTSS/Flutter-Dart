// ignore_for_file: must_be_immutable

import 'package:contact_list/model/contato.dart';
import 'package:contact_list/model/contatoService.dart';
import 'package:contact_list/view/recursos/barraSuperior.dart';
import 'package:contact_list/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Perfil extends StatelessWidget {
  int id = 0;

  ContatoService service = ContatoService();

  Perfil({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    Contato contato = service.listarContatos().elementAt(id - 1);

    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${contato.nome} ${contato.sobrenome}",
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        wordSpacing: 3),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    contato.fone,
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
                  ),
                  Text(
                    contato.email,
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: const Divider(
                  height: 5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.phoneFlip,
                        color: Colors.orange.shade400,
                        size: 28,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Ligar',
                        style: TextStyle(
                            color: Colors.orange.shade400, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidCommentDots,
                        color: Colors.orange.shade400,
                        size: 28,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Mensagem',
                        style: TextStyle(
                            color: Colors.orange.shade400, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.video,
                        color: Colors.orange.shade400,
                        size: 28,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Video',
                        style: TextStyle(
                            color: Colors.orange.shade400, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidEnvelope,
                        color: Colors.orange.shade400,
                        size: 28,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'E-mail',
                        style: TextStyle(
                            color: Colors.orange.shade400, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const FaIcon(FontAwesomeIcons.pen),
        onPressed: () {},
      ),
    );
  }
}
