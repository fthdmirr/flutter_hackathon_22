import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/extension/string_extension.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:kartal/kartal.dart';

class AwardViewDetail extends StatelessWidget {
  const AwardViewDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Padding(
          padding: context.paddingLow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ödüller',
                style: TextStyle(fontSize: 40),
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shadowColor: Colors.white,
                        child: Center(
                            child: Padding(
                          padding: context.paddingLow,
                          child: Column(
                            children: [
                              Expanded(child: Image.asset('kitap1'.toJpg)),
                              Text('Monte Kristo Kontu'),
                              Text('1500 Puan'),
                            ],
                          ),
                        )),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
