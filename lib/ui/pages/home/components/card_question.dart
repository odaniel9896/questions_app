import 'package:flutter/material.dart';
import 'package:questions_app/ui/components/components.dart';
import 'package:questions_app/ui/themes/app_colors.dart';
import 'package:questions_app/ui/themes/app_images.dart';
import 'package:questions_app/ui/themes/text_styles.dart';

class CardQuestion extends StatelessWidget {
  const CardQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: 96,
      margin: const EdgeInsetsDirectional.only(top: 16),
      width: size.width * 0.9,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: AppColors.gray,
                blurRadius: 15,
                spreadRadius: 5,
                offset: Offset(5, 5))
          ],
          // border: Border.all(),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset(
          AppImages.questionPeople,
          height: 50,
          width: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
                text: "UI UX Design",
                style: TextStyles.titleCourse,
                gradient: const LinearGradient(
                  colors: AppColors.primaryGradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: Icon(Icons.list, size: 16),
                ),
                Text("10 Questões", style: TextStyles.subTitleCourse),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: Icon(Icons.alarm, size: 16),
                ),
                Text("1 hora e 15 minutos", style: TextStyles.subTitleCourse),
              ],
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: AppColors.yellow,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: GradientText(
                  text: "4.8",
                  style: TextStyles.titleCourse,
                  gradient: const LinearGradient(
                    colors: AppColors.primaryGradient,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
            ),
          ],
        )
      ]),
    );
  }
}
