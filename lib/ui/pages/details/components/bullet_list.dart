import 'package:flutter/material.dart';

class BulletInfoList extends StatelessWidget {
  const BulletInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListTile(
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
              "\u2022 10 Pontos para cada respota correta e nenhum para resposta incorreta"),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "\u2022 Clique em uma opção para marcar a resposta correta.",
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 25),
          title: Text(
            "\u2022 Clique no marcador para salvar a sua resposta .",
          ),
        )
      ],
    );
  }
}
