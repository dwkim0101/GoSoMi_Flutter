import 'package:ai_lawyer_gosomi_flutter/screens/home_screen.dart';
import 'package:ai_lawyer_gosomi_flutter/theme/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selected = 0;
  bool heart = false;
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: colorMainScreen,
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.blink,
          iconStyle: IconStyle.simple,
        ),
        items: [
          BottomBarItem(
            icon: Column(
              children: [
                const Gap(10),
                SvgPicture.asset(
                    'assets/images/bottom_bar/icons/icon_home_off.svg'),
                const Gap(2),
                SvgPicture.asset(
                    'assets/images/bottom_bar/letter_icon/letter_icon_home_off.svg'),
              ],
            ),
            selectedIcon: Column(
              children: [
                const Gap(10),
                SvgPicture.asset(
                    'assets/images/bottom_bar/icons/icon_home_on.svg'),
                const Gap(2),
                SvgPicture.asset(
                    'assets/images/bottom_bar/letter_icon/letter_icon_home_on.svg'),
              ],
            ),
            title: const Text('Home'),
          ),
          BottomBarItem(
            icon: Column(
              children: [
                const Gap(10),
                SvgPicture.asset(
                    'assets/images/bottom_bar/icons/icon_chat_off.svg'),
                const Gap(2),
                SvgPicture.asset(
                    'assets/images/bottom_bar/letter_icon/letter_icon_chat_off.svg'),
              ],
            ),
            selectedIcon: Column(
              children: [
                const Gap(10),
                SvgPicture.asset(
                    'assets/images/bottom_bar/icons/icon_chat_on.svg'),
                const Gap(2),
                SvgPicture.asset(
                    'assets/images/bottom_bar/letter_icon/letter_icon_chat_on.svg'),
              ],
            ),
            title: const Text('Star'),
          ),
          BottomBarItem(
              icon: Column(
                children: [
                  const Gap(10),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/icons/icon_info_off.svg'),
                  const Gap(2),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/letter_icon/letter_icon_info_off.svg'),
                ],
              ),
              selectedIcon: Column(
                children: [
                  const Gap(10),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/icons/icon_info_on.svg'),
                  const Gap(2),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/letter_icon/letter_icon_info_on.svg'),
                ],
              ),
              title: const Text('Style')),
          BottomBarItem(
              icon: Column(
                children: [
                  const Gap(10),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/icons/icon_settings_off.svg'),
                  const Gap(2),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/letter_icon/letter_icon_settings_off.svg'),
                ],
              ),
              selectedIcon: Column(
                children: [
                  const Gap(10),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/icons/icon_settings_on.svg'),
                  const Gap(2),
                  SvgPicture.asset(
                      'assets/images/bottom_bar/letter_icon/letter_icon_settings_on.svg'),
                ],
              ),
              title: const Text('Profile')),
        ],
        currentIndex: selected,
        notchStyle: NotchStyle.square,
        onTap: (index) {
          if (index == selected) return;
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: const [
            HomeScreen(),
            Center(child: Text('Star')),
            Center(child: Text('Style')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
