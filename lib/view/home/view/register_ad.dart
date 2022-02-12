import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class RegisterAdView extends StatelessWidget {
  const RegisterAdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Yeni İlan')),
      body: Padding(
        padding: context.paddingLow,
        child: Column(
          children: [
            ContainerCardWidget(
              child: ListTile(
                title: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.title),
                      labelText: 'Baslik'),
                  onChanged: (value) {},
                ),
              ),
            ),
            context.emptySizedHeightBoxLow3x,
            ContainerCardWidget(
              child: ListTile(
                title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.tag),
                        labelText: 'Konu'),
                    onChanged: (value) => null),
              ),
            ),
            context.emptySizedHeightBoxLow3x,
            ContainerCardWidget(
              child: ListTile(
                title: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.subtitles),
                        labelText: 'Açiklama',
                        hintText: 'İlan detayini giriniz'),
                    onChanged: (value) => null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerCardWidget extends StatelessWidget {
  const ContainerCardWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              offset: Offset.zero,
            ),
          ],
        ),
        child: child);
  }
}
