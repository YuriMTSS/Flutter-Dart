// ignore_for_file: unused_import

import 'view/home.dart';
import 'view/recursos/estilo.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Agenda de contatos',
        home: const Home(),
        debugShowCheckedModeBanner: false,
        theme: estilo(),
      ),
    );
