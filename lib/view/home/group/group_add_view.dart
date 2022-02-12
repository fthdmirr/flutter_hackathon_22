import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/theme/app_colors.dart';

class GroupViewAdd extends StatelessWidget {
  const GroupViewAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              context.emptySizedHeightBoxHigh,
              Text('Grup Ekle',
                  style: context.textTheme.headline3?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              context.emptySizedHeightBoxHigh,
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Grup İsmi'),
                ),
              ),
              context.emptySizedHeightBoxLow,
              TextFormField(
                  decoration: InputDecoration(
                      label: Text('Lokasyon'),
                      hintText:
                          'Kullandığın veya tercih ettiğin parklar yürüyüş alanları')),
              context.emptySizedHeightBoxLow,
              TextFormField(
                  decoration: InputDecoration(label: Text('Kişiler'))),
              context.emptySizedHeightBoxLow,
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Kişi sayısı'),
                  )),
              context.emptySizedHeightBoxHigh,
              Center(
                  child: ElevatedButton(
                child: Text('Tamam'),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.secondaryColor),
                    foregroundColor:
                        MaterialStateProperty.all(AppColors.accentColor)),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
