import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbhagri/components/certificated_bar.dart';
import 'package:mbhagri/components/profile_admin_tabbar.dart';
import 'package:mbhagri/components/profile_card.dart';
import 'package:mbhagri/components/profile_driver_tabbar.dart';
import 'package:mbhagri/components/profile_produicer_tabbar.dart';
import 'package:mbhagri/components/profile_simple_user_tabbar.dart';
import 'package:mbhagri/utils/data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileCard(),
            const CertificatedBar(),
            buildProfileTabBar(user),
          ],
        ),
      ),
    );
  }
}

Widget buildProfileTabBar(user) {
  switch (user.role.toString().trim().toLowerCase()) {
    case "admin":
      return const ProfileAdminTabBar();
    case "producteur":
      return const ProfileProduicerTabBar();
    case "transporteur":
      return const ProfileDriverTabBar();
    default:
      return const ProfileSimpleUserTabBar();
  }
}
