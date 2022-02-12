import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/constants/app.dart';

import 'view/profile/view/public_profile.dart';

void main() => runApp(MyApp());

//TODO: uygulama logic yazılacak
//TODO: animasyon eklenicek vakit kalırsa
//TODO: clean code prensipleri uygulanıcak vakit kalırsa

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.APP_NAME,
      debugShowCheckedModeBanner: false,
      home: PublicProfile(),
    );
  }
}
