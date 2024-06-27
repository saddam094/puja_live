import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puja_live/features/dashboard/presentation/view/dashboard_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
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
          // home: userIsLoggedIn ?  const DashBoardScreen() :  const SplashScreen(),
          // home:  LoginScreen(),
        );
      },
    );
  }
}

///another one
// import 'dart:async';
// import 'package:camera/camera.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:ivs_broadcaster/ivs_broadcaster.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'AWS IVS Broadcasting',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const BroadcastScreen(),
//     );
//   }
// }
//
// class BroadcastScreen extends StatefulWidget {
//   const BroadcastScreen({Key? key}) : super(key: key);
//
//   @override
//   State<BroadcastScreen> createState() => _BroadcastScreenState();
// }
//
// class _BroadcastScreenState extends State<BroadcastScreen> {
//   IvsBroadcaster? ivsBroadcaster;
//   late List<CameraDescription> cameras;
//   CameraController? cameraController;
//
//   String key = "sk_ap-south-1_viN3xX7gow2x_Pu1ScFQQ2GtfP6HNxx4JySbVxESpgR";
//   String url = "rtmps://0d2219dd3bee.global-contribute.live-video.net:443/app/";
//
//   @override
//   void initState() {
//     super.initState();
//     initializeCamera();
//     ivsBroadcaster = IvsBroadcaster();
//   }
//
//   Future<void> initializeCamera() async {
//     try {
//       cameras = await availableCameras();
//       cameraController = CameraController(
//         cameras[0],
//         ResolutionPreset.high,
//         imageFormatGroup: ImageFormatGroup.yuv420, // Explicitly set the image format
//         enableAudio: true,
//       );
//
//       await cameraController!.initialize();
//       setState(() {}); // Refresh UI after camera initialized
//     } catch (e) {
//       if (kDebugMode) {
//         print('Error during cameraController initializing: $e');
//       }
//     }
//   }
//
//   @override
//   void dispose() {
//     cameraController?.dispose();
//     ivsBroadcaster?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (cameraController == null || !cameraController!.value.isInitialized) {
//       return Scaffold(
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     } else {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Broadcast Screen'),
//         ),
//         body: Stack(
//           children: [
//             CameraPreview(cameraController!),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     // Start Broadcast
//                     ElevatedButton(
//                       onPressed: () async {
//                         try {
//                           if (kDebugMode) {
//                             print('Starting broadcast...');
//                           }
//                           await ivsBroadcaster?.startBroadcast(
//                             imgset: url,
//                             streamKey: key,
//                           );
//                           if (kDebugMode) {
//                             print('Broadcast started successfully');
//                           }
//                         } catch (error) {
//                           if (kDebugMode) {
//                             print('Error starting broadcast: $error');
//                           }
//                         }
//                       },
//                       child: const Text('Start Broadcast'),
//                     ),
//                     // Stop Broadcast
//                     ElevatedButton(
//                       onPressed: () async {
//                         try {
//                           if (kDebugMode) {
//                             print('Stopping broadcast...');
//                           }
//                           await ivsBroadcaster?.stopBroadcast();
//                           if (kDebugMode) {
//                             print('Broadcast stopped successfully');
//                           }
//                         } catch (error) {
//                           if (kDebugMode) {
//                             print('Error stopping broadcast: $error');
//                           }
//                         }
//                       },
//                       child: const Text('Stop Broadcast'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }



