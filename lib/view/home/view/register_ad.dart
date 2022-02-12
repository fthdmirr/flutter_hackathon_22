import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:kartal/kartal.dart';

class RegisterAdView extends StatelessWidget {
  const RegisterAdView({Key? key}) : super(key: key);

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
              Text('İlan Ekle',
                  style: context.textTheme.headline3?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              context.emptySizedHeightBoxHigh,
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Günlük Adım Hedefi'),
                ),
              ),
              context.emptySizedHeightBoxLow3x,
              TextFormField(
                  decoration: InputDecoration(
                      label: Text('Lokasyon'),
                      hintText:
                          'Kullandığın veya tercih ettiğin parklar yürüyüş alanları')),
              context.emptySizedHeightBoxLow3x,
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
