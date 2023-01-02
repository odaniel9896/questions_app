import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:questions_app/ui/themes/app_colors.dart';

class TextStyles {
  static final titleHome = GoogleFonts.ubuntu(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static final subTitleHome = GoogleFonts.dmSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final input = GoogleFonts.nunito(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
  );
  static final toolbar = GoogleFonts.nunito(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );

  static final titleCourse = GoogleFonts.ubuntu(
    fontSize: 16,
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
  );

  static final subTitleCourse = GoogleFonts.nunito(
    fontSize: 14,
    color: AppColors.fullGray,
    fontWeight: FontWeight.w400,
  );

  static final appBarTitle = GoogleFonts.ubuntu(
    fontSize: 18,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  static final detailsTitle = GoogleFonts.nunito(
    fontSize: 16,
    color: AppColors.textColor,
    fontWeight: FontWeight.w700,
  );
}
