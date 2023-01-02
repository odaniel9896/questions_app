import 'package:flutter/material.dart';
import 'package:questions_app/ui/components/appbar/custom_appbar.dart';
import 'package:questions_app/ui/components/body/body_with_border.dart';
import 'package:questions_app/ui/pages/home/components/tab_bar.dart';
import 'package:questions_app/ui/pages/home/components/input_search.dart';
import 'package:questions_app/ui/themes/text_styles.dart';
import '../../components/components.dart';
import '../../themes/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(
        backgroundColor: Colors.blue,
      ),
      appBar: const CustomAppBar(
          leadingIcon: Icon(Icons.menu), finishIcon: Icon(Icons.person)),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(),
        child: Stack(children: [
          const CustomLinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.9, 1),
              colors: AppColors.primaryGradient),
          Column(
            children: [
              ListTile(
                title: Text(
                  "Olá Daniel",
                  style: TextStyles.subTitleHome,
                ),
                textColor: AppColors.white,
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Vamos testar seu conhecimento",
                    style: TextStyles.titleHome,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                    width: size.width * 0.93,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              spreadRadius: 0.4)
                        ]),
                    child: const InputSearch()),
              ),
              const BodyWithBorder(
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: CustomTabBar(),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
