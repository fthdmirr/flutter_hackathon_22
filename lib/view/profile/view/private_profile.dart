import 'package:flutter/material.dart';
import '../../../core/extension/string_extension.dart';
import '../../../core/theme/app_colors.dart';
import '../../../widget/circle_avatar_gender.dart';
import 'package:kartal/kartal.dart';

class PrivateProfile extends StatelessWidget {
  const PrivateProfile({Key? key}) : super(key: key);

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
                  leading: Icon(Icons.golf_course_sharp),
                  title: Text('Kilo hedefi'),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('Mevcut Kilo:130\nHedef:90'),
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
            ],
          ),
        ),
      ),
    );
  }
}
