import 'dart:developer';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ivs_broadcaster/ivs_broadcaster.dart';
import 'package:puja_live/features/dashboard/presentation/view/dashboard_screen.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: Size(w, h),
      builder: (context, child) {
        return GetMaterialApp(
          // getPages: AppRoutes.appRoutes(),
          title: 'Puja Live.',
          debugShowCheckedModeBanner: false,
          theme: FlexThemeData.light(
            scheme: FlexScheme.red,
            surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
            blendLevel: 10,
            appBarStyle: FlexAppBarStyle.background,
            bottomAppBarElevation: 1.0,
            subThemesData: const FlexSubThemesData(
              blendOnLevel: 20,
              blendTextTheme: true,
              useTextTheme: true,
              useM2StyleDividerInM3: true,
              thickBorderWidth: 2.0,
              elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
              elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
              outlinedButtonOutlineSchemeColor: SchemeColor.primary,
              toggleButtonsBorderSchemeColor: SchemeColor.primary,
              segmentedButtonSchemeColor: SchemeColor.primary,
              segmentedButtonBorderSchemeColor: SchemeColor.primary,
              unselectedToggleIsColored: true,
              sliderValueTinted: true,
              inputDecoratorSchemeColor: SchemeColor.primary,
              inputDecoratorBackgroundAlpha: 15,
              inputDecoratorRadius: 10.0,
              inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
              chipRadius: 10.0,
              popupMenuRadius: 6.0,
              popupMenuElevation: 6.0,
              alignedDropdown: true,
              useInputDecoratorThemeInDialogs: true,
              appBarScrolledUnderElevation: 8.0,
              drawerWidth: 280.0,
              drawerIndicatorSchemeColor: SchemeColor.primary,
              bottomNavigationBarMutedUnselectedLabel: false,
              bottomNavigationBarMutedUnselectedIcon: false,
              menuRadius: 6.0,
              menuElevation: 6.0,
              menuBarRadius: 0.0,
              menuBarElevation: 1.0,
              navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
              navigationBarMutedUnselectedLabel: false,
              navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
              navigationBarMutedUnselectedIcon: false,
              navigationBarIndicatorSchemeColor: SchemeColor.primary,
              navigationBarIndicatorOpacity: 1.00,
              navigationBarElevation: 2.0,
              navigationBarHeight: 70.0,
              navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
              navigationRailMutedUnselectedLabel: false,
              navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
              navigationRailMutedUnselectedIcon: false,
              navigationRailIndicatorSchemeColor: SchemeColor.primary,
              navigationRailIndicatorOpacity: 1.00,
            ),
            visualDensity: FlexColorScheme.comfortablePlatformDensity,
            useMaterial3: true,
            swapLegacyOnMaterial3: true,
            // To use the Playground font, add GoogleFonts package and uncomment
            fontFamily: GoogleFonts.roboto().fontFamily,
          ),
          themeMode: ThemeMode.system,

          home: const DashboardScreen(),
          // home: const BroadCastWidget(),
          // home: userIsLoggedIn ?  const DashBoardScreen() :  const SplashScreen(),
          // home:  LoginScreen(),
        );
      },
    );
  }
}