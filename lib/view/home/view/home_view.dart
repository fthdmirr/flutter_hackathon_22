import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/view/home/group/gruop_view.dart';
import 'package:flutter_hackathon_2022/view/home/view/register_ad.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff25f26a),
        floatingActionButton: FloatingActionButton(
            onPressed: () => context.navigateToPage(RegisterAdView()),
            child: Icon(Icons.add)),
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
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(context.lowValue),
                      color: Color(0xffF4FBF6)),
                  child: Column(
                    children: [
                      Card(
                        elevation: 0,
                        child: ListTile(
                          leading: CircleAvatar(),
                          title: Text('Fatih'),
                          subtitle: Text('25 yaşındayım ankaralıyım'),
                          trailing: Text('20 km'),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: ListTile(
                          dense: true,
                          leading: Icon(Icons.location_on),
                          trailing: Expanded(
                            child: Text('Neşat Ertaş Parkı-Kelebek Su Parkı '),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: ListTile(
                          dense: true,
                          leading: Text(
                            'Günlük Adım Hedefi: ',
                            style: context.textTheme.bodyText1,
                          ),
                          title: Text(
                            '8000',
                            style: context.textTheme.bodyText2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
