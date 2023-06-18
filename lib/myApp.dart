import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/navigator/data/app_navigator.dart';
import 'core/navigator/data/app_router.dart';
import 'core/navigator/data/app_routes.dart';
import 'core/utils/globals/globals.dart';
import 'core/utils/theme/app_theme.dart';

bool isSessionExpired = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  AppRouter appRoutes = sl<AppRouter>();
  AppNavigator appNavigator = sl<AppNavigator>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return ScreenUtilInit(
      designSize: const Size(360, 804),
      builder: (c, ch) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: snackbarKey,

          title: 'Starting Project',
          theme: AppTheme.appTheme,
          onGenerateRoute: appRoutes.generate,
          navigatorKey: appNavigator.getKey(),
          initialRoute: AppRoutes.splash,

        ),
      ),
    );
  }
}
