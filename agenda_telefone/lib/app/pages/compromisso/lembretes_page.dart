import 'package:agenda_telefone/app/models/lembrete_model.dart';
import 'package:flutter/material.dart';

class LembretesPage extends StatelessWidget {
  const LembretesPage({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisSpacing = 8;
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount =
        MediaQuery.of(context).orientation == Orientation.portrait ? 1 : 3;
    double width = (screenWidth - ((crossAxisCount - 1) * crossAxisSpacing)) /
        crossAxisCount;
    int cellHeight = 60;
    double aspectRatio = width / cellHeight;

    List<LembreteModel> lembretes = LembreteModel().todos();

    return OrientationBuilder(
      builder: (context, orientation) {
        return GridView.builder(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5.0,
            top: 10,
            bottom: 10,
          ),
          shrinkWrap: false,
          itemCount: lembretes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: aspectRatio,
          ),
          itemBuilder: (context, index) {
            final item = lembretes[index];
            return Card(
              elevation: 0.5,
              child: ListTile(
                title: Text(
                  item.titulo!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(item.hora!),
              ),
            );
          },
        );
      },
    );
  }
}
