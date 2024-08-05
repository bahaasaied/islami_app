import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier{
  List<String> verses=[];
  laodSuraFile(int index) async {
    String sura =
    await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    List<String> suraLines = sura.split("\n");
    print(suraLines);
    verses = suraLines;
    notifyListeners();
  }

}