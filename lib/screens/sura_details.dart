import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:islami/provider/sura_details_provider.dart';
import 'package:islami/theme/my_theme_data.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'suraDetails';

  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {

    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    var provider = Provider.of<Myprovider>(context);

    // var provider = Provider.of<SuraDetailsProvider>(context);
    // if(provider.verses.isEmpty){
    //   provider.laodSuraFile(model.index);
    // }

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..laodSuraFile(model.index),
      builder: (context, child) => Stack(children: [

        Image.asset(provider.mode == ThemeMode.light
            ? 'assets/images/bg3.png'
            : 'assets/images/dark_bg.png',
          height: double.infinity,),
        Scaffold(
          appBar: AppBar(
            title: Text(
              model.suraname,
                style: Theme.of(context).textTheme.bodyLarge
            ),
          ),
          body: Card(
            color: Theme.of(context).cardColor,
            elevation: 4,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            margin: EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 29),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                      "${Provider.of<SuraDetailsProvider>(context).verses[index]}(${index + 1})",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium);
                },
                itemCount:
                    Provider.of<SuraDetailsProvider>(context).verses.length,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
