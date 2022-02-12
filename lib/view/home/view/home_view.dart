import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/extension/string_extension.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:flutter_hackathon_2022/view/home/group/gruop_view.dart';
import 'package:flutter_hackathon_2022/view/home/view/register_ad.dart';
import 'package:flutter_hackathon_2022/widget/circle_avatar_gender.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Ana Sayfa',
              style: TextStyle(color: AppColors.secondaryColor, fontSize: 25),
            ),
            backgroundColor: AppColors.accentColor,
          ),
          backgroundColor: AppColors.mainColor,
          floatingActionButton: FloatingActionButton(
              backgroundColor: AppColors.accentColor,
              onPressed: () => context.navigateToPage(RegisterAdView()),
              child: Icon(
                Icons.add,
                color: AppColors.secondaryColor,
              )),
          body: Padding(
            padding: context.paddingLow,
            child: ListView.builder(
              physics: ScrollPhysics(parent: BouncingScrollPhysics()),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: context.paddingLow,
                child: Dismissible(
                  key: Key(index.toString()),
                  onDismissed: (direction) {
                    context.navigateToPage(GroupView());
                  },
                  child: Container(
                    padding: context.paddingLow,
                    height: context.dynamicHeight(0.25),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(context.lowValue),
                        color: AppColors.secondaryColor),
                    child: Column(
                      children: [
                        Card(
                          elevation: 0,
                          child: ListTile(
                            leading: CircleAvatarGender(
                                image: index % 2 == 0
                                    ? 'man'.toJpg
                                    : 'woman'.toJpg),
                            title: Text('Fatih'),
                            subtitle: Text('25 yaşındayım ankaralıyım'),
                            trailing: Text('20 km'),
                          ),
                        ),
                        context.emptySizedHeightBoxLow,
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            context.emptySizedWidthBoxLow3x,
                            Text('Kelebeksu Parkı - Neşat Ertaş parkı'),
                          ],
                        ),
                        context.emptySizedHeightBoxLow,
                        Row(
                          children: [
                            Icon(Icons.track_changes),
                            context.emptySizedWidthBoxLow3x,
                            Text('Günlük adım hedefi 8000'),
                          ],
                        ),
                        context.emptySizedHeightBoxLow,
                        Row(
                          children: [
                            Icon(Icons.group),
                            context.emptySizedWidthBoxLow3x,
                            Text('Mevcut Gruplar Akşam Sefası - Akgezenler'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
