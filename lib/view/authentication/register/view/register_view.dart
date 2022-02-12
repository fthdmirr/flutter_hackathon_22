import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:kartal/kartal.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  final TextEditingController test = TextEditingController();
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
              Text('Kayıt Ol',
                  style: context.textTheme.headline3?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              context.emptySizedHeightBoxHigh,
              TextFormField(
                decoration: InputDecoration(label: Text('İsim')),
              ),
              context.emptySizedHeightBoxLow3x,
              TextFormField(
                  decoration: InputDecoration(label: Text('Lokasyon'))),
              context.emptySizedHeightBoxLow3x,
              TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      label: Text('Biyografi'), hintText: 'Kendini bahset')),
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
