import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/theme/my_theme_data.dart';

class LanguageBottonsheet extends StatelessWidget {
  const LanguageBottonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              context.setLocale(Locale("ar"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'arabic'.tr(),
                  style: context.locale == Locale("ar")
                      ? Theme.of(context)
                          .textTheme
                          .bodyMedium!.copyWith(color: Theme.of(context).primaryColor)
                          ?.copyWith(color: primaryColor)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color:  Colors.black),
                ),
                context.locale == Locale("ar")
                    ? Icon(
                  Icons.done,
                  color: primaryColor,
                  size: 30,
                ):SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 28,
          ),
          InkWell(
            onTap: () {
              context.setLocale(Locale("en"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('english'.tr(),
                  style: context.locale == Locale("en")
                      ? Theme.of(context)
                      .textTheme
                      .bodyMedium!.copyWith(color: Theme.of(context).primaryColor)
                      ?.copyWith(color: primaryColor)
                      : Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black),),
                context.locale == Locale("en")
                    ? Icon(
                  Icons.done,
                  color: primaryColor,
                  size: 30,
                ):SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
