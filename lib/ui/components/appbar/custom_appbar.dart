import 'package:flutter/material.dart';
import 'package:questions_app/ui/components/components.dart';
import 'package:questions_app/ui/themes/themes.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final Icon leadingIcon;
  final Icon finishIcon;

  const CustomAppBar(
      {super.key,
      this.title,
      required this.leadingIcon,
      required this.finishIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: const CustomLinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.9, 1),
          colors: AppColors.primaryGradient),
      elevation: 0,
      titleSpacing: 0,
      titleTextStyle: TextStyles.appBarTitle,
      title: Text(title ?? ''),
      leading: IconButton(
        icon: leadingIcon,
        onPressed: () => {},
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: finishIcon,
        )
      ],
    );
  }
}
