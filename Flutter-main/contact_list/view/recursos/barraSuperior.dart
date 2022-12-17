// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar {
  BarraSuperior({super.key})
      : super(
          automaticallyImplyLeading: false, // Esconde o menu
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const FaIcon(FontAwesomeIcons.bars),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          title: Text(
            'Agenda de Contatos',
            style: TextStyle(
              color: Colors.orange.shade400,
              fontSize: 28,
            ),
          ),

          iconTheme: IconThemeData(color: Colors.orange.shade400),
        );
}
