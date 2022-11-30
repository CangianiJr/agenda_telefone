import 'package:agenda_telefone/app/components/layout_component.dart';
import 'package:agenda_telefone/app/models/contato_model.dart';
import 'package:flutter/material.dart';

class ListaContatoPage extends StatefulWidget {
  const ListaContatoPage({super.key});

  @override
  State<ListaContatoPage> createState() => _ListaContatoPageState();
}

class _ListaContatoPageState extends State<ListaContatoPage> {
  List<ContatoModel> contatos = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    contatos = ContatoModel().todos();
  }

  @override
  Widget build(BuildContext context) {
    int crossAxisSpacing = 8;
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount =
        MediaQuery.of(context).orientation == Orientation.portrait ? 1 : 3;
    double width = (screenWidth - ((crossAxisCount - 1) * crossAxisSpacing)) /
        crossAxisCount;
    int cellHeight = 70;
    double aspectRatio = width / cellHeight;

    return LayoutComponent(
      title: "Contatos",
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              top: 10,
              bottom: 10,
            ),
            shrinkWrap: false,
            itemCount: contatos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: aspectRatio,
            ),
            itemBuilder: (context, index) {
              final item = contatos[index];
              return Card(
                elevation: 0.5,
                child: ListTile(
                  title: Text(
                    item.nome!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    item.telefone!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Icon(
                    Icons.star,
                    size: 20,
                    color: item.favorito! ? Colors.blue : Colors.grey,
                  ),
                  onTap: () {
                    setState(() {
                      if (contatos[index].favorito!) {
                        item.favorito = false;
                      } else {
                        item.favorito = true;
                      }
                    });
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
