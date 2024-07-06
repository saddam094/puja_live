import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:puja_live/features/brodcast/presentation/view/brodcast_preview_screen.dart';
import 'package:puja_live/res/color/app_color.dart';
import 'package:puja_live/res/constant/constant_data.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    await [Permission.camera, Permission.microphone].request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// Heading Container
          Container(
            height: Constant.height * .12,
            width: Constant.width * 1,
            padding: EdgeInsets.only(
              left: Constant.width * .05,
              right: Constant.width * .04
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Dashboard Text
                Center(child: Text('Dashboard', style: TextStyle(fontSize: Constant.width * .08, fontWeight: FontWeight.w900, color: AppColors.white),)),

                /// Profile Container
                Container(
                  height: Constant.height * .09,
                  width: Constant.width * .18,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(Constant.width * .2),
                    border: Border.all(
                      color: AppColors.black,
                      // width: Constant.width * .005,
                    )
                  ),
                  child: Icon(Icons.person, size: Constant.width * .12, color: AppColors.primaryColor,),
                )
              ],
            ),
          ),

          SizedBox(height: Constant.height * .05),

          /// Go Live Box
          InkWell(
            onTap: () {
              // function call to Go Live
              Get.to(() => const BroadCastPreviewScreen());
            },
            child: Container(
              height: Constant.height * .25,
              width: Constant.width * 1,
              margin: EdgeInsets.only(
                left: Constant.width * .05,
                right: Constant.width * .05,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(Constant.width * .05),
              ),
              child: Center(
                child: Text('Go Live', style: TextStyle(fontSize: Constant.width * .08, fontWeight: FontWeight.w700, color: AppColors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}