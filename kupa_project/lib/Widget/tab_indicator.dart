import 'package:flutter/material.dart';
import 'package:kupa_project/constant.dart';

import '../Onboard/model/onboard_model.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({Key? key, required this.selectedIndex}) : super(key: key);
  final int selectedIndex;
  @override
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _tabController.animateTo(widget.selectedIndex);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: OnboardModels.onBoardItems.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
        color: kPrimaryLightColor,
        selectedColor: kPrimaryColor,
        controller: _tabController);
  }
}
