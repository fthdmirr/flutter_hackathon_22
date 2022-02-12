import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/extension/string_extension.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:flutter_hackathon_2022/view/home/group/group_add_view.dart';
import 'package:flutter_hackathon_2022/widget/circle_avatar_gender.dart';
import 'package:kartal/kartal.dart';

class GroupView extends StatelessWidget {
  const GroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.navigateToPage(GroupViewAdd());
        },
        child: Icon(Icons.add),
        backgroundColor: AppColors.accentColor,
      ),
      appBar: AppBar(
        title: Text('Group'),
        backgroundColor: AppColors.accentColor,
      ),
      body: Padding(
        padding: context.horizontalPaddingLow,
        child: ListView.builder(
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: 10,
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
                    Text(
                      'Akşam Meltemi',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: context.paddingLow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Üyeler',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w200),
                          ),
                          Text('3/9',
                              style: TextStyle(fontWeight: FontWeight.w200))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.08),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) => Row(
                          children: [
                            context.emptySizedWidthBoxLow,
                            Column(
                              children: [
                                CircleAvatarGender(image: 'man'.toJpg),
                                Text(
                                  'Ahmet',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
