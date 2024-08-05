import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/hadeth_model.dart';
import 'package:islami/screens/hadeth_details.dart';
import 'package:islami/theme/my_theme_data.dart';

class AhadehTab extends StatefulWidget {
  AhadehTab({super.key});

  @override
  State<AhadehTab> createState() => _AhadehTabState();
}

class _AhadehTabState extends State<AhadehTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      laodHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/ahadeth_bg.png',
          height: 219,
        ),
        Divider(
          thickness: 3,
        ),
        Text(
          'ahadeth'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(
          thickness: 3,
          color: primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: double.infinity,
              height: 15,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,

                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }

  laodHadethFile() {
    rootBundle.loadString('assets/files/ahadeth/ahadeth.txt').then((Value) {
      List<String> ahadeth = Value.split('#');

      for (int i = 0; i < ahadeth.length; i++) {
        String hadethone = ahadeth[i];

        List<String> hadethLines = hadethone.trim().split('\n');

        String title = hadethLines[0];

        hadethLines.removeAt(0);

        List<String> content = hadethLines;

        HadethModel hadethModel = HadethModel(title, content);

        allAhadeth.add(hadethModel);

        print(hadethModel.title);
      }
      setState(() {});
    });
  }
}
