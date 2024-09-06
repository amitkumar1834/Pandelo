import 'package:e_commerce_app/features/Authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ---- use this class to setup themes,any animations, intial bindings and much more ------

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
