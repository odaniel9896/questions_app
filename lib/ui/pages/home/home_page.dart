import 'package:flutter/material.dart';
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
      appBar: AppBar(
        flexibleSpace: const CustomLinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.9, 1),
            colors: AppColors.primaryGradient),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.person),
          )
        ],
      ),
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
                  child: TextField(
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
                        // const Icon(Icons.search, color: AppColors.primary),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                                width: 0.0, color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                                width: 0.0, color: Colors.transparent))),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
