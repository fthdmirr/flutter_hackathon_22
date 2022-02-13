import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/view/authentication/splash_screen/view_model.dart/splash_view_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/app.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashViewModel viewModel;
  @override
  void initState() {
    super.initState();
    viewModel = SplashViewModel(context);
    viewModel.navigateToMainScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: context.dynamicHeight(0.15)),
          Center(child: Lottie.asset('avocado'.toLottie)),
          Text(AppConstants.APP_NAME,style: GoogleFonts.quicksand(
                  color: AppColors.secondaryColor, fontSize: 30,fontWeight: FontWeight.bold)),
                  context.emptySizedHeightBoxLow,
          Text(AppConstants.APP_SLOGAN,
              style: GoogleFonts.quicksand(
                  color: AppColors.secondaryColor, fontSize: 25))
        ],
      ),
    );
  }
}
