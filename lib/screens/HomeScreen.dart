import 'package:flutter/material.dart';
import 'package:msf/screens/dashboard/dashboard_screen.dart';
import 'package:msf/utills/responsive.dart';
import 'component/SideBar.dart';
import 'package:get/get.dart';
import 'package:msf/controllers/MenuController.dart' as MyMenuController;

class HomeScreen extends StatelessWidget {
  final MyMenuController.MenuController _menuController = Get.put(MyMenuController.MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Drawer flex 1/6
          if (Responsive.isDesktop(context))
            Expanded(
              child: SideBar(),
            ),
          //Drawer flex 5/6
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
      drawer: GetBuilder<MyMenuController.MenuController>(
        builder: (controller) {
          if (controller != null && controller.isMenuOpen) {
            return Drawer();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}