import 'package:flutter/material.dart';
import 'package:mbhagri/utils/colors.dart';

class ProfileSimpleUserTabBar extends StatefulWidget {
  const ProfileSimpleUserTabBar({super.key});

  @override
  State<ProfileSimpleUserTabBar> createState() =>
      _ProfileSimpleUserTabBarState();
}

class _ProfileSimpleUserTabBarState extends State<ProfileSimpleUserTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
            labelStyle: const TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
            ),
            tabs: const [
              Tab(text: "Offres"),
              Tab(text: "Transports en cours"),
              Tab(text: "Statistiques"),
            ],
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
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
