import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ruok/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ruok/utils/constants/text_strings.dart';
import 'package:ruok/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Texts.appName,
      themeMode: ThemeMode.system,
      theme: AppThemeCustom.lightTheme,
      darkTheme: AppThemeCustom.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
    );
  }
}
