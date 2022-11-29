import 'package:agenda_telefone/app/pages/contato/lista_contato_page.dart';
import 'package:flutter/material.dart';

class AgendaTelefone extends StatelessWidget {
  const AgendaTelefone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda telefone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListaContatoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
