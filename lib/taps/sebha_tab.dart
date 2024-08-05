import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:islami/theme/my_theme_data.dart';
import 'package:provider/provider.dart';
class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  List<String> Azkar = [
    "سبحان الله",
    "الحمد الله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset(
                provider.mode == ThemeMode.light
                ?'assets/images/head_sebha_logo.png'
                :'assets/images/head_sebha_dark.png',
                height: 105,
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {
                    OnTap();
                  },
                  child: Image.asset(
                    provider.mode == ThemeMode.light
                    ?'assets/images/body_sebha_logo.png'
                    :'assets/images/body_sebha_dark.png',
                    height: 234,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0),
          child: Text(
            'number_of_praises'.tr(),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text('$counter',style: TextStyle(color: Colors.black),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text('${Azkar[index]}',style: TextStyle(color: Colors.black),),
            ),
          ),
        ),
      ],
    );
  }

  OnTap() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      counter=0;
    }
    if(index ==Azkar.length){
      index=0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}
