import 'package:flutter/material.dart';
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
                    child: const InputSearch()),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: size.height,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: DefaultTabController(
                        length: 4,
                        child: Scaffold(
                          backgroundColor: Colors.red,
                          appBar: AppBar(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              toolbarHeight: 0,
                              bottom: const TabBar(
                                indicatorColor: AppColors.primary,
                                indicatorSize: TabBarIndicatorSize.label,
                                labelColor: AppColors.gray,
                                tabs: [
                                  Tab(
                                    text: "Vapo",
                                  ),
                                  Tab(
                                    text: "Vapo",
                                  ),
                                  Tab(
                                    text: "Vapo",
                                  ),
                                  Tab(
                                    text: "Vapo",
                                  )
                                ],
                              )),
                          body: const TabBarView(
                            children: [
                              Text("vapovapo"),
                              Text("vapsdadsasovapo"),
                              Text("test"),
                              Text("vaptsdsadovapo")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
