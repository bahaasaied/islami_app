import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/taps/ahadeh_tab.dart';
import 'package:islami/taps/quran_tab.dart';
import 'package:islami/taps/radio_tab.dart';
import 'package:islami/taps/sebha_tab.dart';
import 'package:islami/taps/settings_tab.dart';
import 'package:islami/theme/my_theme_data.dart';

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
    return Stack(
      children: [
        Image.asset('assets/images/bg3.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
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
