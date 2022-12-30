import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../themes/themes.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.input,
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: CustomGradientIcon(
            icon: Icons.search,
            size: 24.0,
            gradient: LinearGradient(
              colors: AppColors.primaryGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          labelText: "Pesquisar",
          suffixIcon: CustomGradientIcon(
            icon: Icons.swap_horiz,
            size: 24.0,
            gradient: LinearGradient(
              colors: AppColors.primaryGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          fillColor: AppColors.gray,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(width: 0.0, color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(width: 0.0, color: Colors.transparent))),
    );
  }
}
