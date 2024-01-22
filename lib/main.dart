import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/routes/routes.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // if (kDebugMode) {
  //   Bloc.observer = LogBlocObserver();
  // }

  runApp(
    ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (ctx, child) {
          return EasyLocalization(
              supportedLocales: const [
                Locale('ru', 'RU'),
              ],
              path: 'assets/translation',
              fallbackLocale: const Locale('ru', 'RU'),
              startLocale: const Locale('ru', 'RU'),
              saveLocale: true,
              child: const MyApp());
        }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(useMaterial3: true),
      builder: EasyLoading.init(),
      onGenerateRoute: (settings) => AppRoutes.main(),
    );
  }
}
