import 'package:flutter/material.dart';
import 'package:questions_app/ui/themes/app_colors.dart';

class BodyWithBorder extends StatelessWidget {
  final Widget child;
  const BodyWithBorder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: 16,
              child: Container(
                width: 48,
                height: 4,
                decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(Radius.circular(32))),
              ),
            ),
            child
          ],
        ),
      ),
    ));
  }
}
