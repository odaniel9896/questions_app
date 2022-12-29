import 'package:flutter/material.dart';
import 'package:questions_app/ui/components/components.dart';
import 'package:questions_app/ui/themes/app_colors.dart';

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
        child: Stack(
          children: const [
            CustomLinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.9, 1),
                colors: AppColors.primaryGradient)
          ],
        ),
      ),
    );
  }
}
