import 'package:contact_list/model/contato.dart';
import 'package:contact_list/model/contatoService.dart';
import 'package:contact_list/view/cadastro.dart';
import 'package:contact_list/view/perfil.dart';
import 'package:contact_list/view/recursos/barraSuperior.dart';
import 'package:contact_list/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget {
  const Busca({super.key});
  @override
  State<Busca> createState() => _BuscaState();
}

class _BuscaState extends State<Busca> {
  ContatoService service = ContatoService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuDrawer(),
      body: ListView.builder(
        itemCount: service.listarContatos().length,
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 75),
        itemBuilder: (BuildContext context, int index) {
          Contato contato = service.listarContatos().elementAt(index);
          return Container(
            color: Colors.grey.shade800,
            //padding: EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "${contato.nome}${contato.sobrenome}",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 24),
                      ),
                      Text(contato.fone)
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Perfil(id: contato.id)));
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const FaIcon(
          FontAwesomeIcons.plus,
          size: 32,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Cadastro()));
        },
      ),
    );
  }
}
