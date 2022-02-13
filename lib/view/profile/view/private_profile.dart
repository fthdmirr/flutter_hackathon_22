import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/utils/constants/dummy_data.dart';
import 'package:flutter_hackathon_2022/utils/enum/image_enum.dart';
import 'package:flutter_hackathon_2022/view/authentication/register/view_model/register_view_model.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../core/extension/string_extension.dart';
import '../../../core/theme/app_colors.dart';
import '../../../widget/circle_avatar_gender.dart';
import '../../authentication/register/model/user_model.dart';

class PrivateProfile extends StatefulWidget {
  const PrivateProfile({Key? key}) : super(key: key);

  @override
  State<PrivateProfile> createState() => _PrivateProfileState();
}

class _PrivateProfileState extends State<PrivateProfile> {
  late final User currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentUser = context.read<RegisterViewModel>().currentUser ?? User('Fatih', 'Ben Fatih 21 yaşındayım, Ankarada yaşıyorum', 'Ankara', 1500, ProfileImageEnum.man, [DummyDatas.group2]);
  }

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
                image: currentUser.profileImage.name.toJpg,
                radius: context.highValue,
              ),
              context.emptySizedHeightBoxLow3x,
              Text(
                currentUser.name,
                style: TextStyle(color: AppColors.secondaryColor, fontSize: 30),
              ),
              context.emptySizedHeightBoxLow,
              Card(
                child: ListTile(
                  leading: Icon(Icons.details),
                  title: Text('Hakkında'),
                  trailing: Icon(Icons.edit),
                  subtitle: Text(
                     currentUser.bio),
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
                  subtitle: Text(currentUser.location),
                ),
              ),
              context.emptySizedHeightBoxLow,
              Card(
                child: ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Mevcut Puan'),
                  subtitle: Text(currentUser.point.toString()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
