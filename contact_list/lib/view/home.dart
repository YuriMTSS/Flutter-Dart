import 'package:contact_list/view/busca.dart';
import 'package:contact_list/view/recursos/barraSuperior.dart';
import 'package:contact_list/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 25),
              child: Column(
                children: [
                  Text(
                    'O que vamos fazer?',
                    style: TextStyle(color: Colors.grey.shade300, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange.shade800,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Busca()));
                        },
                        child: Container(
                          width: 300,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                'Buscar contatos',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        child: Container(
                          width: 300,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                'Cadastrar contatos',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
