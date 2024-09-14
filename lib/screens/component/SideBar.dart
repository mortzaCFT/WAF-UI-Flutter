import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:msf/main.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondryColor,
      child: SingleChildScrollView(
        child: Column(
                    children: [
     //   DrawerHeader(child: Image.asset("img/Icon.png")),
    SizedBox(height: 80,),
                 Divider(
                color: Theme.of(context).dividerColor,
              ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.speed_outlined,
            color: Colors.white60,
          ),
          title: AutoSizeText(
            "Dashboard",
          maxLines: 1,
          ),
        ),
         ListTile(
          onTap: () {},
          leading: Icon(
            Icons.web,
            color: Colors.white60,
          ),
          title: AutoSizeText(
            "Websites",
          maxLines: 1,
          ),
        ),
         ListTile(
          onTap: () {},
          leading: Icon(
            Icons.settings_sharp,
            color: Colors.white60,
          ),
          title: AutoSizeText(
            "Settings",
          maxLines: 1,
          ),
        ),
         ListTile(
          onTap: () {},
          leading: Icon(
            Icons.speed_outlined,
            color: Colors.white60,
          ),
          title: AutoSizeText(
            "Interface",
          maxLines: 1,
          ),
        ),
         ListTile(
          onTap: () {},
          leading: Icon(
            Icons.padding,
            color: Colors.white60,
          ),
          title: AutoSizeText(
            "System Log",
          maxLines: 1,
          ),
        ),
                    ],
                  ),
      ),
    );
  }
}
