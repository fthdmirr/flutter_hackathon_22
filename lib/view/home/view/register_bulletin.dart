import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../view_model/home_view_model.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class RegisterBulletinView extends StatelessWidget {
  const RegisterBulletinView({Key? key}) : super(key: key);

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
                controller: context.watch<HomeViewModel>().stepController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Günlük Adım Hedefi'),
                ),
              ),
              context.emptySizedHeightBoxLow3x,
              TextFormField(
                  controller: context.watch<HomeViewModel>().locationController,
                  decoration: InputDecoration(
                      label: Text('Lokasyon'),
                      hintText:
                          'Kullandığın veya tercih ettiğin parklar yürüyüş alanları')),
              context.emptySizedHeightBoxHigh,
              Center(
                  child: ElevatedButton(
                child: Text('Tamam'),
                onPressed: () {
                  context.read<HomeViewModel>().addBulletin(context);
                  context.pop();
                },
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
