import 'package:flutter/material.dart';
import 'package:questions_app/ui/components/appbar/custom_appbar.dart';
import 'package:questions_app/ui/components/components.dart';
import 'package:questions_app/ui/themes/app_colors.dart';
import 'package:questions_app/ui/themes/text_styles.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = AppBar().preferredSize.height;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height),
        child: const CustomAppBar(
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Container(
                      height: size.height,
                      width: size.width,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 48,
                                height: 4,
                                decoration: const BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32))),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(),
                            margin: const EdgeInsets.symmetric(horizontal: 24),
                            child: Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Text(
                                  "Uma explicação sobre o quiz",
                                  style: TextStyles.detailsTitle,
                                )),
                          ),
                          Container(
                            decoration: const BoxDecoration(),
                            // height: 40,
                            child: ListTile(
                              leading: Container(
                                height: 200,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                                child: const Icon(
                                  Icons.list,
                                  size: 40,
                                  color: AppColors.white,
                                ),
                              ),
                              title: Text("10 Questões",
                                  style: TextStyles.detailsTitle),
                              subtitle: Text("10 pontos para cada questão",
                                  style: TextStyles.subTitleCourse),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(),
                            // height: 40,
                            child: ListTile(
                              leading: Container(
                                height: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                                child: const Icon(
                                  Icons.alarm_outlined,
                                  size: 40,
                                  color: AppColors.white,
                                ),
                              ),
                              title: Text("1 Hora e 15 minutos",
                                  style: TextStyles.detailsTitle),
                              subtitle: Text("Duração máximo do teste",
                                  style: TextStyles.subTitleCourse),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(),
                            // height: 40,
                            child: ListTile(
                              leading: Container(
                                height: 200,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                                child: const Icon(
                                  Icons.star_outline,
                                  size: 40,
                                  color: AppColors.white,
                                ),
                              ),
                              title: Text("Ganhe 10 estrelas",
                                  style: TextStyles.detailsTitle),
                              subtitle: Text("Responda todas as questões corretamente",
                                  style: TextStyles.subTitleCourse),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 24, right: 24, bottom: 10),
                            child: Text(
                              "Por favor, leia o texto abaixo com atenção para que você possa compreender.",
                              style: TextStyles.detailsTitle,
                            ),
                          ),
                          const ListTile(
                            contentPadding: EdgeInsets.only(left: 25),
                            title: Text(
                                "\u2022 10 Pontos para cada respota correta e nenhum para resposta incorreta"),
                          ),
                          const ListTile(
                            contentPadding: EdgeInsets.only(left: 25),
                            title: Text(
                              "\u2022 Clique em uma opção para marcar a resposta correta.",
                            ),
                          ),
                          const ListTile(
                            contentPadding: EdgeInsets.only(left: 25),
                            title: Text(
                              "\u2022 Clique no marcador para salvar a sua resposta .",
                            ),
                          ),
                        ],
                      ),
                    ),
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
