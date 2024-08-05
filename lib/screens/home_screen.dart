import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:islami/taps/ahadeh_tab.dart';
import 'package:islami/taps/quran_tab.dart';
import 'package:islami/taps/radio_tab.dart';
import 'package:islami/taps/sebha_tab.dart';
import 'package:islami/taps/settings_tab.dart';
import 'package:islami/theme/my_theme_data.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);

    return Stack(
      children: [
        Image.asset(provider.mode == ThemeMode.light
            ? 'assets/images/bg3.png'
            : 'assets/images/dark_bg.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'islami'.tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            // backgroundColor: MyThemeData.primaryColor,

            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeh.png')),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
                backgroundColor: Color(0XFFB7935F),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadehTab(),
    SettingsTab(),
  ];
}
