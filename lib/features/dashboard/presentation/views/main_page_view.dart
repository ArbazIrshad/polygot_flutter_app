import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/practice_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/review_view.dart';
import 'package:polygot_app/features/settings/presentation/views/settings_view.dart';

class MainPageView extends StatelessWidget {
  final PageController controller = PageController(initialPage: 1);
  MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF172155),
        body: PageView(
          allowImplicitScrolling: false,
          // scrollBehavior: ScrollBehavior(),
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            ReviewView(),
            DashboardView(),
            PracticeView(),
            SettingsView(),
          ],
        ),
        bottomNavigationBar: FluidNavBar(
          defaultIndex: controller.initialPage,
          scaleFactor: 2.0,
          style: FluidNavBarStyle(
            iconSelectedForegroundColor: Colors.white,
            barBackgroundColor: Colors.white10,
            // iconBackgroundColor: Color(0xFFBC78F1),
          ),
          animationFactor: 0.3,
          icons: [
            FluidNavBarIcon(icon: Icons.checklist),
            FluidNavBarIcon(icon: Icons.collections_bookmark_outlined),
            FluidNavBarIcon(icon: Icons.list_outlined),
            FluidNavBarIcon(icon: Icons.settings
                // backgroundColor: LinearGradient(colors: )
                ),
          ],
          onChange: (index) {
            controller.jumpToPage(index);
            // switch (index) {
            //   case 0:
            //     controller.jumpToPage(0);
            //     break;
            //   case 1:
            //     controller.jumpToPage();

            //     Get.to(() => DashboardView());
            //     break;
            //   case 2:
            //     Get.to(() => PracticeView());
            //     break;
            //   case 3:
            //     Get.to(() => SettingsView());
            //     break;
            // }
          },
        ),
      ),
    );
  }
}
