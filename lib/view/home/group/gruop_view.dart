import 'package:flutter/material.dart';
import '../../../core/extension/string_extension.dart';
import '../../../core/theme/app_colors.dart';
import '../../../utils/constants/hive_constants.dart';
import 'group_add_view.dart';
import '../../../widget/circle_avatar_gender.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kartal/kartal.dart';

import '../model/group_model.dart';

class GroupView extends StatelessWidget {
  const GroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      floatingActionButton: floatingActionButtonWidget(context),
      appBar: appBarWidget(),
      body: Padding(
        padding: context.horizontalPaddingLow,
        child: ValueListenableBuilder(
          valueListenable:
              Hive.box<Group>(HiveConstants.GROUP_BOX).listenable(),
          builder: (context, Box<Group> viewModel, child) {
            final groups = viewModel.values.toList();
            return groupListWidget(groups);
          },
        ),
      ),
    );
  }

  FloatingActionButton floatingActionButtonWidget(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.navigateToPage(GroupViewAdd());
      },
      child: Icon(Icons.add),
      backgroundColor: AppColors.accentColor,
    );
  }

  AppBar appBarWidget() {
    return AppBar(
      title: Text('Group'),
      backgroundColor: AppColors.accentColor,
    );
  }

  ListView groupListWidget(List<Group> groups) {
    return ListView.builder(
            physics: ScrollPhysics(parent: BouncingScrollPhysics()),
            itemCount: groups.length,
            itemBuilder: (context, index) => Padding(
              padding: context.verticalPaddingLow,
              child: Container(
                height: context.dynamicHeight(0.2),
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(context.normalValue)),
                child: Padding(
                  padding: context.paddingLow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      groupNameWidget(groups, index),
                      groupLenghtWidget(context, groups, index),
                      starsWidget(context, groups, index)
                    ],
                  ),
                ),
              ),
            ),
          );
  }

  Text groupNameWidget(List<Group> groups, int index) {
    return Text(
                        groups[index].name,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      );
  }

  Padding groupLenghtWidget(BuildContext context, List<Group> groups, int index) {
    return Padding(
                        padding: context.paddingLow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Üyeler',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w200),
                            ),
                            Text(
                                '${groups[index].users.length}/${(index + 1) * 2}',
                                style: TextStyle(fontWeight: FontWeight.w200))
                          ],
                        ),
                      );
  }

  SizedBox starsWidget(BuildContext context, List<Group> groups, int index) {
    return SizedBox(
                        height: context.dynamicHeight(0.08),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: groups[index].users.length,
                          itemBuilder: (context, index2) => Row(
                            children: [
                              context.emptySizedWidthBoxLow,
                              Column(
                                children: [
                                  CircleAvatarGender(
                                      image: groups[index]
                                          .users[index2]
                                          .profileImage
                                          .name
                                          .toJpg),
                                  Text(groups[index].users[index2].name,
                                      style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
  }
}
