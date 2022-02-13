import 'package:flutter/material.dart';
import 'core/cache/hive_cache.dart';
import 'core/constants/app.dart';
import 'utils/constants/hive_constants.dart';
import 'view/home/view/home_view.dart';
import 'view/home/view_model/home_view_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'utils/enum/image_enum.dart';
import 'view/authentication/register/model/user_model.dart';
import 'view/authentication/register/view/register_view.dart';
import 'view/authentication/register/view_model/register_view_model.dart';
import 'view/home/model/bulletin_model.dart';
import 'view/home/model/group_model.dart';
import 'widget/bottom_navigation_bar.dart';

Future<void> main() async {

//! food-award -->data
//! food -->data

//TODO: uygulama logic yazılacak
//TODO: bottom app bar eklenecek
//TODO:splash screen initilization yapılacak
//TODO: widget dosyası utils altına atılacak
//TODO: github read me yazılacak

//TODO: clean code prensipleri uygulanıcak vakit kalırsa
//TODO: animasyon eklenicek vakit kalırsa

  await Hive.initFlutter();

  Hive.registerAdapter(ProfileImageEnumAdapter());
  Hive.registerAdapter(GroupImageEnumAdapter());
  Hive.registerAdapter(BulletinAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(GroupAdapter());

  await Hive.openBox<User>(HiveConstants.USER_BOX);
  await Hive.openBox<Group>(HiveConstants.GROUP_BOX);
  await Hive.openBox<Bulletin>(HiveConstants.BULETTIN_BOX);

  /*  await HiveCache<User>(HiveConstants.USER_BOX)
    ..registerAdapters<User>(HiveConstants.USER_TYPE_ID, UserAdapter())
    ..initCache();

  await HiveCache<Group>(HiveConstants.GROUP_BOX)
    ..registerAdapters<Group>(HiveConstants.GROUP_TYPE_ID, GroupAdapter())
    ..initCache();

  await HiveCache<Bulletin>(HiveConstants.BULETTIN_BOX)
    ..registerAdapters<Bulletin>(
        HiveConstants.BULETTIN_TYPE_ID, BulletinAdapter())
    ..initCache(); */

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (context) =>
            RegisterViewModel(HiveCache(HiveConstants.USER_BOX))),
    ChangeNotifierProvider(
        create: (context) =>
            HomeViewModel(HiveCache(HiveConstants.BULETTIN_BOX))),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppConstants.APP_NAME,
        debugShowCheckedModeBanner: false,
      
       home: context.watch<RegisterViewModel>().currentUser != null
            ? BottomNavigation()
            : RegisterView());
  }
}
