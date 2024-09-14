import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:msf/main.dart';
import 'package:msf/utills/responsive.dart';
import 'package:get/get.dart';
import 'package:msf/controllers/MenuController.dart' as MyMenuController;

class Line1 extends StatelessWidget {
  final MyMenuController.MenuController _menuController = Get.find();

  Line1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(
            onPressed: () => _menuController.toggleMenu(),
            icon: Icon(Icons.menu_sharp),
          ),
        if(!Responsive.isMobile(context))
          AutoSizeText("Welcome  Admin!",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        if(!Responsive.isMobile(context)) Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: secondryColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              suffixIcon: InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal:16/2),
                  padding: EdgeInsets.all(16 * 0.75),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16),
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16/2,
          ),
          decoration:BoxDecoration(color: secondryColor,
            borderRadius:BorderRadius.circular(10), border: Border.all(color: Colors.white12),),
          child: Row(
            children: [
              Icon(Icons.account_circle,size: 26,),
              Text("admin1"),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_rounded),)
            ],
          ),
        )
      ],
    );
  }
}