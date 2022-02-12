import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GroupView extends StatelessWidget {
  const GroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      appBar: AppBar(
        title: Text('Group'),
      ),
      body: Padding(
        padding: context.horizontalPaddingLow,
        child: ListView.builder(
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: context.verticalPaddingLow,
            child: Container(
              height: context.dynamicHeight(0.1650),
              decoration: BoxDecoration(
                  color: context.randomColor,
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
                      height: context.dynamicHeight(0.05),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) => Row(
                          children: [
                            context.emptySizedWidthBoxLow,
                            CircleAvatar(),
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
