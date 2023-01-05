// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kupa_project/Login/view/login_page_view.dart';
import 'package:kupa_project/Onboard/model/onboard_model.dart';
import 'package:kupa_project/Widget/tab_indicator.dart';

import 'package:kupa_project/constant.dart';

import '../../Widget/onboard_card.dart';
import '../../products/start_fab_button.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({Key? key}) : super(key: key);

  @override
  State<OnboardingPageView> createState() => _OnboardingPageView();
}

class _OnboardingPageView extends State<OnboardingPageView> {
  final String _path = "assets/images/kupaa.png";

  final PageController _controller = PageController();
  int _selectedIndex = 0;

  bool get _isLastPage =>
      OnboardModels.onBoardItems.length - 1 == _selectedIndex;
  bool get _isFirstPage => _selectedIndex == 0;

  ValueNotifier<bool> isBackEnable = ValueNotifier(false);

  void _incrementAndChange([int? value]) {
    if (_isLastPage && value == null) {
      _changeBackEnable(true);
      return;
    }

    _changeBackEnable(false);
    _incrementSelectedPage(value);
  }

  void _changeBackEnable(bool value) {
    if (value == isBackEnable.value) return;
    isBackEnable.value = value;
  }

  void _incrementSelectedPage([int? value]) {
    setState(() {
      if (value != null) {
        _selectedIndex = value;
      } else {
        _selectedIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: false,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: PageView(
                  controller: _controller,
                  children: [SizedBox(child: _pageViewItems())],
                ),
              ),
              TabIndicator(selectedIndex: _selectedIndex),
              const SizedBox(height: 15),
              StartFabButton(
                onPressed: () {
                  !_isLastPage
                      ? setState(() {
                          _incrementAndChange();
                        })
                      : Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                },
                isLastPage: _isLastPage,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryLightColor,
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Image.asset(
              _path,
              height: 24,
            ),
          ),
          const Text(
            "Чыны",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _pageViewItems() {
    return PageView.builder(
      onPageChanged: (value) {
        _incrementAndChange(value);
      },
      itemCount: OnboardModels.onBoardItems.length,
      itemBuilder: (context, index) {
        return OnboardCard(model: OnboardModels.onBoardItems[index]);
      },
    );
  }
}
