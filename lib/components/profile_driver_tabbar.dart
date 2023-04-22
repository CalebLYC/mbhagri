import 'package:flutter/material.dart';
import 'package:mbhagri/utils/colors.dart';

class ProfileDriverTabBar extends StatefulWidget {
  const ProfileDriverTabBar({super.key});

  @override
  State<ProfileDriverTabBar> createState() => _ProfileDriverTabBarState();
}

class _ProfileDriverTabBarState extends State<ProfileDriverTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
              Tab(text: "Actuel transport"),
              Tab(text: "Transports déjà effectués"),
            ],
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Container(),
              Container(),
            ]),
          ),
        ],
      ),
    );
  }
}
