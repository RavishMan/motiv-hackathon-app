import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motiv_hackathon_app/theme/design/design_theme.dart';

import 'opened_item_field.dart';

class ResumeCarouselItem extends StatelessWidget {
  const ResumeCarouselItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .9 - 10,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://avatars.mds.yandex.net/get-zen_doc/229614/pub_5b13bde555bd23121d720d31_5b13be9a7ddde8d404eae64e/scale_1200",
              ),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .9 - 10,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomLeft,
              colors: [Colors.transparent, Colors.black.withOpacity(0.6)],
              stops: [0.0, 1.0],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Вин Дизель, 49 лет",
                  style: DesignTheme.carouselTitleWhite,
                ),
                SizedBox(height: 5),
                ItemOpenedField(
                  text: "70000р",
                  icon: FontAwesomeIcons.rubleSign,
                ),
                SizedBox(height: 5),
                ItemOpenedField(
                  text: "Уральский Федеральный Университет",
                  icon: FontAwesomeIcons.university,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
