import 'package:agenda_telefone/app/pages/compromisso/index_compromisso_page.dart';
import 'package:agenda_telefone/app/pages/contato/lista_contato_page.dart';
import 'package:flutter/material.dart';

class LayoutComponent extends StatelessWidget {
  final String title;
  final Widget body;
  final PreferredSizeWidget? appBarBottom;
  const LayoutComponent({
    super.key,
    required this.title,
    required this.body,
    this.appBarBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        bottom: appBarBottom,
        centerTitle: true,
      ),
      body: body,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Contatos'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ListaContatoPage();
                }));
              },
            ),
            ListTile(
              title: const Text('Comprimissos | Lembretes'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const IndexComprimissoPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
