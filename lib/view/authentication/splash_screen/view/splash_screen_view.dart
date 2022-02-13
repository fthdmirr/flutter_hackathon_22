import 'package:flutter/material.dart';
import '../../../../core/constants/app.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: context.dynamicHeight(0.15)),
          Center(child: Lottie.asset('avocado'.toLottie)),
          Text(AppConstants.APP_SLOGAN,
              style: GoogleFonts.quicksand(
                  color: AppColors.secondaryColor, fontSize: 25))
          /* Text(
            AppConstants.APP_SLOGAN,
            style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: 25,
                fontFamily: GoogleFonts().,
                fontWeight: FontWeight.w400),
          ) */
        ],
      ),
    );
  }
}
