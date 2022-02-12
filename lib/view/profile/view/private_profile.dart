import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/widget/custom_circle_avatar.dart';
import 'package:kartal/kartal.dart';

class PrivateProfile extends StatelessWidget {
  const PrivateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              CustomCircleAvatar(),
              context.emptySizedHeightBoxLow3x,
              Text('Fatih Demir'),
              context.emptySizedHeightBoxLow3x,
              Card(
                child: ListTile(
                  title: Text('About'),
                  trailing: Icon(Icons.edit),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Hedef'),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('Mevcut Kilo:130\nHedef:90'),
                ),
              ),
              Card(
                child: ListTile(
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
