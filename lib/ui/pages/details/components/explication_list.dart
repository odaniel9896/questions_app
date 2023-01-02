import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/text_styles.dart';

class ExplicationList extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ExplicationList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: ListTile(
        leading: Container(
          height: 200,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          child: Icon(
            icon,
            size: 40,
            color: AppColors.white,
          ),
        ),
        title: Text(title, style: TextStyles.detailsTitle),
        subtitle: Text(subtitle, style: TextStyles.subTitleCourse),
      ),
    );
  }
}
