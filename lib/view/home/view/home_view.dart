import 'package:flutter/material.dart';
import '../../../core/extension/string_extension.dart';
import '../../../core/theme/app_colors.dart';
import '../../../utils/constants/hive_constants.dart';
import '../group/gruop_view.dart';
import '../model/bulletin_model.dart';
import 'register_bulletin.dart';
import '../../../widget/circle_avatar_gender.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
              onPressed: () => context.navigateToPage(RegisterBulletinView()),
              child: Icon(
                Icons.add,
                color: AppColors.secondaryColor,
              )),
          body: Padding(
            padding: context.paddingLow,
            child: ValueListenableBuilder(
                valueListenable:
                    Hive.box<Bulletin>(HiveConstants.BULETTIN_BOX).listenable(),
                builder: (context, Box<Bulletin> viewModel, child) {
                  final bulletins = viewModel.values.toList();
                  return ListView.builder(
                    physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                    itemCount: bulletins.length,
                    itemBuilder: (context, index) => Padding(
                      padding: context.paddingLow,
                      child: Dismissible(
                        key: Key(index.toString()),
                        onDismissed: (direction) {
                          context.navigateToPage(GroupView());
                          bulletins.removeAt(index);
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.circular(context.lowValue),
                              color: AppColors.secondaryColor),
                          child: Column(
                            children: [
                              Card(
                                elevation: 0,
                                child: ListTile(
                                  leading: CircleAvatarGender(
                                      image: bulletins[index]
                                          .user
                                          .profileImage
                                          .name
                                          .toJpg),
                                  title: Text(bulletins[index].user.name),
                                  subtitle: Text(bulletins[index].user.bio),
                                  trailing: Text('${(index + 1) * 9.5} km'),
                                ),
                              ),
                              context.emptySizedHeightBoxLow,
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  context.emptySizedWidthBoxLow3x,
                                  Text(bulletins[index].location),
                                ],
                              ),
                              context.emptySizedHeightBoxLow,
                              Row(
                                children: [
                                  Icon(Icons.track_changes),
                                  context.emptySizedWidthBoxLow3x,
                                  Text(
                                      'Günlük adım hedefi ${bulletins[index].stepGoal}'),
                                ],
                              ),
                              context.emptySizedHeightBoxLow,
                              Row(
                                children: [
                                  Icon(Icons.group),
                                  context.emptySizedWidthBoxLow3x,
                                  Text(bulletins[index].user.groups.isNotEmpty
                                      ? bulletins[index]
                                          .user
                                          .groups[index]
                                          .location
                                      : 'Henüz kayıtlı olduğu bir grup yok'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )),
    );
  }
}
