import 'package:agenda_telefone/app/components/layout_component.dart';
import 'package:agenda_telefone/app/pages/compromisso/compromissos_page.dart';
import 'package:agenda_telefone/app/pages/compromisso/lembretes_page.dart';
import 'package:flutter/material.dart';

class IndexComprimissoPage extends StatefulWidget {
  const IndexComprimissoPage({super.key});

  @override
  State<IndexComprimissoPage> createState() => _IndexComprimissoPageState();
}

class _IndexComprimissoPageState extends State<IndexComprimissoPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late String tituloPagina;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    tituloPagina = _tabController.index == 0 ? "Comprimissos" : "Lembretes";
    _tabController.addListener(mudarTituloPagina);
  }

  void mudarTituloPagina() {
    setState(() {
      tituloPagina = _tabController.index == 0 ? "Comprimissos" : "Lembretes";
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      title: tituloPagina,
      appBarBottom: TabBar(
        controller: _tabController,
        tabs: const <Widget>[
          Tab(
            icon: Icon(Icons.calendar_today),
          ),
          Tab(
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          CompromissosPage(),
          LembretesPage(),
        ],
      ),
    );
  }
}
