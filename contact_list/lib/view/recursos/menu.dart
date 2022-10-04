// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors
import 'package:contact_list/view/busca.dart';
import 'package:contact_list/view/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  final String usuario = 'Yuri Martins Silva';
  final String email = 'yuriestudos01@gmail.com';
  final String fotoPerfil = 'assets/luciel.png';

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: mostrarTitulo('Home'),
            accountEmail: Text(email),
            currentAccountPictureSize: const Size.fromRadius(50),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                fotoPerfil,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            subtitle: const Text('Página inicial'),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.home,
              color: Colors.orange.shade400,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Contatos'),
            subtitle: const Text('Gerênciar contatos'),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.userFriends,
              color: Colors.blue.shade400,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Busca(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Pefil'),
            subtitle: const Text('Editar informações'),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.idCard,
              color: Colors.red.shade400,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Configurações'),
            subtitle: const Text('Ajustes no sistema'),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.cog,
              color: Colors.teal.shade400,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Logout'),
            subtitle: const Text('Sair do sistema'),
            trailing: const FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.signOutAlt,
              color: Colors.grey.shade400,
              size: 32,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
