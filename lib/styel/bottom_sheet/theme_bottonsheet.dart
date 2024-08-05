import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:islami/theme/my_theme_data.dart';
import 'package:provider/provider.dart';

class ThemeBottonsheet extends StatelessWidget {
  const ThemeBottonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'light'.tr(),
                  style: provider.mode == ThemeMode.light
                      ? Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: primaryColor)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black),
                ),
                provider.mode == ThemeMode.light
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
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('dark'.tr(),
                    style: provider.mode == ThemeMode.dark
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: primaryColor)
                        : Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.black)),
                provider.mode == ThemeMode.dark
                    ?  Icon(
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
