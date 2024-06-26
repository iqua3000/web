import 'package:flutter/material.dart';
import 'package:iqua_web/china/contact_us_simple.dart';
import 'package:iqua_web/component/launch_browswer.dart';

class DrawerSimple extends StatelessWidget {
  const DrawerSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purple[50],
                backgroundImage: const AssetImage('images/icon.png')),
            accountName: const Text(""),
            accountEmail: const Text(""),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
          ),
          ListTile(
            title: const Text("家"),
            onTap: () {
              Navigator.pushNamed(context, '/home/simple');
            },
          ),
          ListTile(
            title: const Text("公司"),
            onTap: () {
              Navigator.pushNamed(context, '/company/simple');
            },
          ),
          const ListTile(
            title: Text("工作"),
          ),
          const ListTile(
            title: Text("大学"),
          ),
          const ListTile(
            title: Text("社区"),
          ),
          ListTile(
            title: const Text("学习咖啡厅"),
            onTap: () {
              Uri url = Uri.parse("https://cafe.naver.com/tutiplatform");
              launchInBrowswer(url);
            },
          ),
          ListTile(
            title: const Text("联系我们"),
            onTap: () async {
              contactUsDialogSimple(context);
            },
          ),
        ],
      ),
    );
  }
}
