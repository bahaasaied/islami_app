import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/theme/my_theme_data.dart';


class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraDetails';

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      laodSuraFile(model.index);
    }
    return Stack(
        children: [
      Image.asset('assets/images/bg3.png',height: double.infinity,),
      Scaffold(
        appBar: AppBar(
          title: Text(
            model.suraname,

          ),
        ),
        body: Card(
          color: cardlightColor,
          elevation: 4,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Colors.transparent
            )
          ),
          margin: EdgeInsets.only(top: 12,right: 12,left: 12,bottom: 29),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  "${verses[index]}(${index + 1})",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium
                );
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ),
    ]);
  }

  laodSuraFile(int index) async {
    String sura =
        await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    List<String> suraLines = sura.trim().split("\n");
    print(suraLines);
    verses = suraLines;
    setState(() {});
  }
}
