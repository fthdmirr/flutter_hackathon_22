import 'package:flutter/material.dart';
import '../../../core/extension/string_extension.dart';
import '../../../core/theme/app_colors.dart';
import '../../../widget/circle_avatar_gender.dart';
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
                child: Padding(
                  padding: context.verticalPaddingLow,
                  child: Column(
                    children: [
                      groupWidget(context, 'Akşam Sefası', 'group0',
                          'Fatih-Cengiz-Furkan-Mert'),
                      groupWidget(context, 'Girls', 'group2', 'Aslı-Gamze'),
                      groupWidget(
                          context, '800k Yasuo', 'group1', 'Anıl-Osman'),
                      groupWidget(
                          context, 'Gençler', 'group0', 'Merve-Pakize-Emrecan'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget groupWidget(context, String name, String pic, String groupMembers) {
    return Card(
        child: ListTile(
      dense: true,
      leading: CircleAvatarGender(image: pic.toJpg),
      trailing: Icon(Icons.notifications),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(' davet isteği yolladı'),
        ],
      ),
      subtitle: Text(groupMembers),
    ));
  }
}
