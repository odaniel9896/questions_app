import 'package:flutter/material.dart';
import 'package:questions_app/ui/components/components.dart';
import 'package:questions_app/ui/pages/details/components/components.dart';
import 'package:questions_app/ui/themes/app_colors.dart';
import 'package:questions_app/ui/themes/text_styles.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Detalhes do quiz",
        leadingIcon: Icon(
          Icons.arrow_back,
          color: AppColors.white,
        ),
        finishIcon: Icon(
          Icons.people,
          color: AppColors.white,
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            const CustomLinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.9, 1),
                colors: AppColors.primaryGradient),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListTile(
                    title: Text(
                      "UI UX Design Quiz",
                      style: TextStyles.titleHome,
                    ),
                    textColor: AppColors.white,
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Ganhe 100 pontos",
                        style: TextStyles.subTitleHome,
                      ),
                    ),
                  ),
                ),
                BodyWithBorder(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(),
                        padding:
                            const EdgeInsets.only(left: 24, right: 24, top: 20),
                        child: Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Text(
                              "Uma explica????o sobre o quiz",
                              style: TextStyles.detailsTitle,
                            )),
                      ),
                      const ExplicationList(
                        title: "10 Quest??es",
                        subtitle: "10 pontos para cada quest??o",
                        icon: Icons.list,
                      ),
                      const ExplicationList(
                        title: "1 Hora e 15 minutos",
                        subtitle: "Dura????o m??xima do teste",
                        icon: Icons.alarm_outlined,
                      ),
                      const ExplicationList(
                          title: "Ganhe 10 estrelas",
                          subtitle: "Responda todas as quest??es corretamente.",
                          icon: Icons.star_outline),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 24, right: 24, bottom: 10),
                        child: Text(
                          "Por favor, leia o texto abaixo com aten????o para que voc?? possa compreender.",
                          style: TextStyles.detailsTitle,
                        ),
                      ),
                      const BulletInfoList(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
