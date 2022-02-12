import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/extension/string_extension.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:flutter_hackathon_2022/widget/circle_avatar_gender.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.accentColor,
        body: Padding(
          padding: context.paddingNormal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Bildirimler',
                    style: TextStyle(
                        color: AppColors.secondaryColor, fontSize: 40),
                  ),
                  Lottie.asset('avocado'.toLottie,
                      height: context.dynamicHeight(0.1))
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) => Padding(
                          padding: context.verticalPaddingLow,
                          child: Card(
                              child: ListTile(
                            dense: true,
                            leading: CircleAvatarGender(image: 'man'.toJpg),
                            trailing: Icon(Icons.notifications),
                            title: Row(
                              children: [
                                Text(
                                  'Akşam Meltemi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(' davet isteği yolladı'),
                              ],
                            ),
                            subtitle: Text('Ahmet-Mehmet-Cengiz'),
                          )),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container withContainer(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.secondaryColor,
      ),
      child: Row(
        children: [
          Text(
            'Akşam Meltemi',
            style: TextStyle(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
