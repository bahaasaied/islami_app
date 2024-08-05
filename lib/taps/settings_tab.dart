import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:islami/styel/bottom_sheet/language_bottonsheet.dart';
import 'package:islami/styel/bottom_sheet/theme_bottonsheet.dart';
import 'package:islami/theme/my_theme_data.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('theme'.tr()),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: primaryColor)),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isDismissible: true,
                  isScrollControlled: true,
                  builder: (context) {
                    return ThemeBottonsheet();
                  },
                );
              },
              child: Text(
                  provider.mode == ThemeMode.light
                      ?'light'.tr():'dark'.tr()
              ),
            ),
          ),
          SizedBox(
            height: 44,
          ),
          Text('language'.tr()),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return LanguageBottonsheet();
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: primaryColor)),
              child: Text(context.locale == Locale("ar")
                  ?'arabic'.tr():"English"),
            ),
          ),
        ],
      ),
    );
  }
}
