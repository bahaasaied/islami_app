import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/hadeth_model.dart';
import 'package:islami/theme/my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethDetails';

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(children: [
      Image.asset(
        'assets/images/bg3.png',
        height: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(model.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            // margin: EdgeInsets.all(),
            color: cardlightColor,
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
                    model.content[index],
                    textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyMedium
                  );
                },
                itemCount: model.content.length,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
