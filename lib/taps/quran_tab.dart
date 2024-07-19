import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/screens/sura_details.dart';
import 'package:islami/theme/my_theme_data.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  _QuranTabState createState() => _QuranTabState();
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> versesNumber = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    5,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    6,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];
}

class _QuranTabState extends State<QuranTab> {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();

  bool _isScrolling = false;

  @override
  void initState() {
    super.initState();

    // Synchronize scrolling between two ListViews
    _scrollController1.addListener(() {
      if (!_isScrolling && _scrollController1.hasClients) {
        _isScrolling = true;
        _scrollController2.jumpTo(_scrollController1.offset);
        _isScrolling = false;
      }
    });

    _scrollController2.addListener(() {
      if (!_isScrolling && _scrollController2.hasClients) {
        _isScrolling = true;
        _scrollController1.jumpTo(_scrollController2.offset);
        _isScrolling = false;
      }
    });
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/moshaf.png',
            height: 227,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: yallowColor,
                        width: 1,
                      )),
                  child: Text(
                    'Verse Number',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 1,
                        color: yallowColor,
                      )),
                  child: Text(
                    'Sura Name',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 500,
            // Adjust this height to make room for your ListView's content
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController1,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          widget.versesNumber[index].toString(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge
                        ),
                      );
                    },
                    itemCount: widget.suraNames.length,
                  ),
                ),
                SizedBox(
                  width: 3,
                  child: VerticalDivider(
                    thickness: 3,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController2,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, SuraDetails.routeName,arguments: SuraModel(widget.suraNames[index],index));

                          },
                          child: Text(widget.suraNames[index],
                              textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge
                            ,),
                        ),

                      );
                    },
                    itemCount: widget.versesNumber.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
