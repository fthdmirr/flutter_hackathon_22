import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/extension/string_extension.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:flutter_hackathon_2022/widget/circle_avatar_gender.dart';
import 'package:kartal/kartal.dart';

import '../../../core/theme/app_colors.dart';
import '../../../widget/circle_avatar_gender.dart';

class PublicProfile extends StatelessWidget {
  const PublicProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              CircleAvatarGender(
                image: 'man'.toJpg,
                radius: context.highValue,
              ),
              context.emptySizedHeightBoxLow3x,
              Text(
                'Fatih Demir',
                style: TextStyle(color: AppColors.secondaryColor, fontSize: 30),
              ),
              context.emptySizedHeightBoxLow,
              Card(
                child: ListTile(
                  leading: Icon(Icons.details),
                  title: Text('Hakkında'),
                  trailing: Icon(Icons.edit),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                ),
              ),
              context.emptySizedHeightBoxLow,
              Card(
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Mevcut Lokasyon'),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('Ankara'),
                ),
              ),
              context.emptySizedHeightBoxLow,
              Card(
                child: ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Mevcut Puan'),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('1500'),
                ),
              ),
              context.emptySizedHeightBoxLow3x,
              Text(
                'Gruplar',
                style: TextStyle(fontSize: 30, color: AppColors.secondaryColor),
              ),
              groupContainer(context),
              context.emptySizedHeightBoxLow,
              groupContainer(context),
            ],
          ),
        ),
      ),
    );
  }

  Container groupContainer(BuildContext context) {
    return Container(
      padding: context.paddingLow,
      height: context.dynamicHeight(0.1),
      width: context.dynamicWidth(1),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(context.lowValue),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: context.randomColor,
            width: context.dynamicWidth(0.15),
          ),
          context.emptySizedWidthBoxLow,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Akşam Sefası', style: TextStyle(fontSize: 20)),
              context.emptySizedHeightBoxLow,
              Text(
                'Üyeler:Ahmet-Mehmet,Aslı',
                style: TextStyle(fontWeight: FontWeight.w300),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Container groupContainer(BuildContext context) {
  return Container(
    padding: context.paddingLow,
    height: context.dynamicHeight(0.1),
    width: context.dynamicWidth(1),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      borderRadius: BorderRadius.circular(context.lowValue),
      color: Colors.white,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: context.randomColor,
          width: context.dynamicWidth(0.15),
        ),
        context.emptySizedWidthBoxLow,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Akşam Sefası', style: TextStyle(fontSize: 20)),
            context.emptySizedHeightBoxLow,
            Text(
              'Üyeler:Ahmet-Mehmet,Aslı',
              style: TextStyle(fontWeight: FontWeight.w300),
            )
          ],
        ),
      ],
    ),
  );
}
