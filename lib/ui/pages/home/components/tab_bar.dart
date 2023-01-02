import 'package:flutter/material.dart';
import 'package:questions_app/ui/pages/home/components/card_question.dart';
import 'package:questions_app/ui/themes/app_colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 0,
            bottom: const TabBar(
              indicatorColor: AppColors.primary,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.gray,
              tabs: [
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "Ciencia",
                ),
                Tab(
                  text: "Math",
                ),
                Tab(
                  text: "Comp",
                )
              ],
            )),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsetsDirectional.only(bottom: 20),
              child: Column(
                children: const [
                  CardQuestion(),
                  CardQuestion(),
                  CardQuestion(),
                  CardQuestion(),
                  CardQuestion(),
                ],
              ),
            ),
            const Icon(Icons.directions_transit, size: 350),
            const Icon(Icons.directions_car, size: 350),
            const Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
