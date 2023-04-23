import 'package:flutter/material.dart';
import 'package:mbhagri/utils/colors.dart';

class ProfileProduicerTabBar extends StatefulWidget {
  const ProfileProduicerTabBar({super.key});

  @override
  State<ProfileProduicerTabBar> createState() => _ProfileProduicerTabBarState();
}

class _ProfileProduicerTabBarState extends State<ProfileProduicerTabBar>
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
              Tab(text: "Mes offres"),
              Tab(text: "produits en cours de transport"),
              Tab(text: "Offres déjà parvenus"),
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
