import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/extension/string_extension.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:flutter_hackathon_2022/view/award/model/award_enum.dart';
import 'package:flutter_hackathon_2022/view/award/view/award_detail_view.dart';
import 'package:kartal/kartal.dart';

import '../../../widget/positioned_container.dart';

class AwardView extends StatelessWidget {
  const AwardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Awards'),
        backgroundColor: AppColors.mainColor,
      ),
      body: Stack(
        children: [
          PositionedContainer(
            positionedTop: context.dynamicHeight(0.23),
            positionedLeft: context.dynamicWidth(0.25),
            bottomLeft: context.normalRadius,
            topRight: context.normalRadius,
            title: 'Yiyecek',
            image: 'vegetables'.toJpg,
            onTap: () => context
                .navigateToPage(AwardViewDetail(awardType: AwardEnum.food)),
          ),
          PositionedContainer(
            angle: math.pi / 45,
            positionedTop: context.dynamicHeight(0.36),
            positionedLeft: context.dynamicWidth(0.22),
            topLeft: context.normalRadius,
            bottomRight: context.normalRadius,
            title: 'Bilet',
            image: 'ticket'.toJpg,
            onTap: () => context
                .navigateToPage(AwardViewDetail(awardType: AwardEnum.ticket)),
          ),
          PositionedContainer(
            positionedTop: context.dynamicHeight(0.23),
            positionedRight: context.dynamicWidth(0.23),
            bottomRight: context.normalRadius,
            topLeft: context.normalRadius,
            title: 'Elektronik',
            image: 'telephone'.toJpg,
            onTap: () => context.navigateToPage(
                AwardViewDetail(awardType: AwardEnum.electronic)),
          ),
          PositionedContainer(
            angle: -math.pi / 45,
            positionedTop: context.dynamicHeight(0.36),
            positionedRight: context.dynamicWidth(0.22),
            topRight: context.normalRadius,
            bottomLeft: context.normalRadius,
            title: 'Kitap',
            image: 'book'.toJpg,
            onTap: () => context
                .navigateToPage(AwardViewDetail(awardType: AwardEnum.book)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: context.mediumValue,
                backgroundColor: Colors.yellow,
              ),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: context.dynamicWidth(0.05),
                    height: context.dynamicHeight(0.5),
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
