import 'package:flutter/material.dart';
import 'package:mbhagri/utils/colors.dart';

class ProfileAdminTabBar extends StatefulWidget {
  const ProfileAdminTabBar({super.key});

  @override
  State<ProfileAdminTabBar> createState() => _ProfileAdminTabBarState();
}

class _ProfileAdminTabBarState extends State<ProfileAdminTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: Primary,
            unselectedLabelColor: Colors.black,
            indicatorColor: Black,
            tabs: const [
              Tab(text: "Offres"),
              Tab(text: "Commandes"),
              Tab(text: "Transports en cours"),
              Tab(text: "Commandes effectués"),
            ],
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Container(),
              Container(),
              Container(),
              Container(),
            ]),
          ),
        ],
      ),
    );
  }
}
