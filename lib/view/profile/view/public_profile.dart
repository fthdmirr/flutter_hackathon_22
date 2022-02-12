import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../widget/custom_circle_avatar.dart';

class PublicProfile extends StatelessWidget {
  const PublicProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: context.paddingNormal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCircleAvatar(),
              context.emptySizedHeightBoxLow3x,
              Center(child: Text('Fatih Demir')),
              context.emptySizedHeightBoxLow3x,
              Card(
                child: ListTile(
                  title: Text('About'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.person),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Lokasyon'),
                  subtitle: Text('Ankara'),
                  trailing: Icon(Icons.location_on),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Mevcut Puan'),
                  subtitle: Text('1500'),
                  trailing: Icon(Icons.money_rounded),
                ),
              ),
              context.emptySizedHeightBoxLow3x,
              Text('Gruplar', style: TextStyle(fontSize: 30)),
              context.emptySizedHeightBoxLow,
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
