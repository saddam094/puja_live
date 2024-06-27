import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:puja_live/res/color/app_color.dart';
import '../fontstyle/const_text_style.dart';

class Utils {
  static double height = Get.size.height;
  static double width = Get.size.width;
  SizedBox vSpacer(height) {
    return SizedBox(height: height);
  }

  // static getToken() async {
  //   var token = await UserPreference().getToken();
  //   print("token: $token");
  //   return token;
  // }

  // for horizontal spacing <->
  SizedBox hSpacer(width) {
    return SizedBox(width: width);
  }

  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.primaryColor,
        textColor: Colors.white);
  }

  static Widget circularIndicator() {
    return const Center(
      child: SizedBox(
        height: 22.0,
        width: 22.0,
        child: CircularProgressIndicator(
          strokeWidth: 5,
          backgroundColor: AppColors.primaryBgColor,
          valueColor: AlwaysStoppedAnimation(AppColors.primaryColor),
        ),
      ),
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER,
        backgroundColor: AppColors.primaryColor,
        textColor: Colors.white);
  }

  static toastMessageTop(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.TOP,
        backgroundColor: AppColors.primaryColor,
        textColor: Colors.white);
  }

  void snackBar(String title, String message) {
    Get.snackbar(title, message,
        reverseAnimationCurve: Curves.bounceIn,
        forwardAnimationCurve: Curves.bounceInOut,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        colorText: AppColors.primaryColor,
        backgroundColor: AppColors.white);
  }

  void errorSnackBar(String title, String message) {
    Get.snackbar(title, message,
        reverseAnimationCurve: Curves.bounceIn,
        forwardAnimationCurve: Curves.bounceInOut,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 4),
        colorText: Colors.white,
        backgroundColor: AppColors.alertColor);
  }

  static Widget commonDialogButton(
      {required BuildContext context,
      required String buttonName,
      required VoidCallback onTap}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            backgroundColor: AppColors.dialogButtonColor),
        onPressed: onTap,
        child: Text(
          buttonName,
          style: const TextStyle(color: Colors.white),
        ));
  }

  // static Future<bool> showDeleteDialog(
  //     BuildContext context, ServiceController controller,int serviceId) async {
  //  return await showDialog(
  //     context: context,
  //     useSafeArea: true,
  //     barrierDismissible: true,
  //     builder: (context) {
  //       return AlertDialog(
  //           title: const Text('Delete Service',
  //               style: TextStyle(
  //                   color: AppColors.primaryColor,
  //                   fontWeight: FontWeight.w800)),
  //           content: SizedBox(
  //             height: 0.12.sh,
  //             child: Column(
  //               children: [
  //                 Text('Are you sure you want to delete this Service',
  //                     style: TextStyle(
  //                         color: Colors.black.withOpacity(0.5),
  //                         fontWeight: FontWeight.w500)),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     ElevatedButton(
  //                         style: ElevatedButton.styleFrom(
  //                             // minimumSize: const Size.fromHeight(60),
  //                             side: const BorderSide(
  //                               width: 1.0,
  //                               color: AppColors.primaryColor,
  //                             ),
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(8.0),
  //                             ),
  //                             backgroundColor: AppColors.greyBgColor),
  //                         onPressed: () {
  //                           Navigator.of(context).pop();
  //                         },
  //                         child: const Text(
  //                           'Cancel',
  //                           style: TextStyle(color: AppColors.primaryColor),
  //                         )),
  //                     ElevatedButton(
  //                         style: ElevatedButton.styleFrom(
  //                             // minimumSize: const Size.fromHeight(60),
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(8.0),
  //                             ),
  //                             backgroundColor: AppColors.primaryColor),
  //                         onPressed: () {
  //                           controller.deleteService(serviceId: serviceId);
  //                           Get.back();
  //                         },
  //                         child: const Text(
  //                           'Delete',
  //                           style: TextStyle(color: Colors.white),
  //                         )),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ));
  //     },
  //   );
  // }

  // static void showBottomModal(BuildContext context) {
  //   showModalBottomSheet<void>(
  //       backgroundColor: AppColors.whiteColor,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(10.0),
  //       ),
  //       context: context,
  //       isScrollControlled: true,
  //       useRootNavigator: true,
  //       builder: (BuildContext context) {
  //         RxInt modalSheetButton = 0.obs;
  //         return FractionallySizedBox(
  //             heightFactor: 0.35,
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(16),
  //                 color: AppColors.whiteColor,
  //               ),
  //               child: Padding(
  //                   padding: const EdgeInsets.symmetric(
  //                     horizontal: 25.0,
  //                     vertical: 14.0,
  //                   ),
  //                   child: Column(
  //                     children: <Widget>[
  //                       ListTile(
  //                           leading: SvgPicture.asset(IconAssets.cameraIcon),
  //                           title: const Text(
  //                             "Camera",
  //                             overflow: TextOverflow.ellipsis,
  //                             textAlign: TextAlign.justify,
  //                             maxLines: 1,
  //                             style: TextStyle(fontWeight: FontWeight.bold
  //                                 // fontSize:
  //                                 //     ScreenUtil(allowFontScaling: true).setSp(50),
  //                                 ),
  //                           ),
  //                           subtitle: const Text(
  //                             "Capture From camera",
  //                             overflow: TextOverflow.ellipsis,
  //                             textAlign: TextAlign.justify,
  //                             maxLines: 1,
  //                             style: TextStyle(color: Color(0xff9A9CAF)
  //                                 // fontSize:
  //                                 //     ScreenUtil(allowFontScaling: true).setSp(50),
  //                                 ),
  //                           ),
  //                           onTap: () {
  //                             Navigator.of(context).pop();
  //                             // setGenerateReportView(context, count, data);
  //                           }),
  //                       ListTile(
  //                           leading: SvgPicture.asset(IconAssets.galleryIcon),
  //                           title: const Text(
  //                             "Gallery",
  //                             overflow: TextOverflow.ellipsis,
  //                             textAlign: TextAlign.justify,
  //                             maxLines: 1,
  //                             style: TextStyle(fontWeight: FontWeight.bold
  //                                 // fontSize:
  //                                 // ScreenUtil(allowFontScaling: true).setSp(50),
  //                                 ),
  //                           ),
  //                           subtitle: const Text(
  //                             "Upload from gallery",
  //                             overflow: TextOverflow.ellipsis,
  //                             textAlign: TextAlign.justify,
  //                             maxLines: 1,
  //                             style: TextStyle(color: Color(0xff9A9CAF)
  //                                 // fontSize:
  //                                 //     ScreenUtil(allowFontScaling: true).setSp(50),
  //                                 ),
  //                           ),
  //                           onTap: () => {Navigator.of(context).pop()}),
  //                       Container(
  //                         // height: 0.2.sh,
  //                         decoration: BoxDecoration(
  //                             color: Colors.grey.shade300,
  //                             borderRadius: BorderRadius.circular(8)),
  //                         padding: const EdgeInsets.symmetric(
  //                             horizontal: 10, vertical: 10),
  //                         child: Obx(() => Row(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceBetween,
  //                                 children: [
  //                                   GestureDetector(
  //                                     onTap: () => modalSheetButton.value = 0,
  //                                     child: Container(
  //                                         // margin: EdgeInsets.all(8),
  //                                         padding: const EdgeInsets.all(15),
  //                                         height: Utils.height / 15,
  //                                         width: Utils.width / 2.5,
  //                                         decoration: modalSheetButton.value ==
  //                                                 0
  //                                             ? BoxDecoration(
  //                                                 color: Colors.white,
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(8))
  //                                             : BoxDecoration(
  //                                                 // color: Colors.white60,
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(8)),
  //                                         child: const Center(
  //                                           child: Text(
  //                                             'Introducation video',
  //                                             style: TextStyle(
  //                                                 fontWeight: FontWeight.bold,
  //                                                 color:
  //                                                     AppColors.primaryColor),
  //                                           ),
  //                                         )),
  //                                   ),
  //                                   GestureDetector(
  //                                     onTap: () => modalSheetButton.value = 1,
  //                                     child: Container(
  //                                         padding: const EdgeInsets.all(15),
  //                                         height: Utils.height / 15,
  //                                         width: Utils.width / 2.5,
  //                                         decoration: modalSheetButton.value ==
  //                                                 1
  //                                             ? BoxDecoration(
  //                                                 color: Colors.white,
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(8))
  //                                             : BoxDecoration(
  //                                                 // color: Colors.white60,
  //                                                 borderRadius:
  //                                                     BorderRadius.circular(8)),
  //                                         child: const Center(
  //                                           child: Text(
  //                                             'Post',
  //                                             style: TextStyle(
  //                                               fontWeight: FontWeight.bold,
  //                                             ),
  //                                           ),
  //                                         )),
  //                                   ),
  //                                 ])),
  //                       )
  //                     ],
  //                   )),
  //             ));
  //       });
  // }

  void showBottomShit(
      context, String image, String title, String btnText, VoidCallback onTap) {
    showModalBottomSheet<void>(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return FractionallySizedBox(
              heightFactor: 0.38,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.03.sw,
                    vertical: 0.02.sh,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: AppColors.dialogButtonColor,
                        child: SvgPicture.asset(image),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.015.sh),
                        child: Text(
                          title,
                          style: ConstFontStyle().textTitle6,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 0.02.sh, right: 0.015.sw, left: 0.015.sw),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          radius: 16,
                          splashColor: Colors.white,
                          child: Container(
                            height: 0.065.sh,
                            decoration: BoxDecoration(
                              color: AppColors.dialogButtonColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: ConstFontStyle()
                                    .buttonTextStyle
                                    .copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 0.015.sh, right: 0.015.sw, left: 0.015.sw),
                        child: InkWell(
                          onTap: onTap,
                          radius: 16,
                          splashColor: Colors.white,
                          child: Container(
                            height: 0.065.sh,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: AppColors.dialogButtonColor)),
                            child: Center(
                              child: Text(
                                btnText,
                                style: ConstFontStyle()
                                    .buttonTextStyle
                                    .copyWith(
                                        color: AppColors.dialogButtonColor,
                                        fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )));
        });
  }

  // static snackbar(String title, String message) {
  //   Get.snackbar(title, message,
  //       animationDuration: const Duration(seconds: 2),
  //       backgroundColor: Colors.white,
  //       duration: const Duration(seconds: 3),
  //       icon: SizedBox(
  //         height: 50,
  //         child: SvgPicture.asset(
  //           IconAssets.splashIcon,
  //           fit: BoxFit.contain,
  //         ),
  //       ),
  //       barBlur: 0);
  // }

  static String apiDate(String timestamp) {
    String apiDatetimeString = timestamp;
    DateTime apiDateTime = DateTime.parse(apiDatetimeString);
    String formattedDatetime = DateFormat('yyyy/MM/dd').format(apiDateTime);
    return formattedDatetime;
  }

  static String apiDate2(String timestamp) {
    String apiDatetimeString = timestamp;
    DateTime apiDateTime = DateTime.parse(apiDatetimeString);
    String formattedDatetime = DateFormat('yyyy-MM-dd').format(apiDateTime);
    return formattedDatetime;
  }

  static String apiTime(String timestamp) {
    String apiDatetimeString = timestamp;
    DateTime apiDateTime = DateTime.parse(apiDatetimeString).toLocal();
    String formattedDatetime = DateFormat('hh:mm a').format(apiDateTime);
    return formattedDatetime;
  }

  static String convertTo12HourFormat(String time) {
    // Check if the input time is in HH:mm:ss format
    if (RegExp(r'^\d{2}:\d{2}:\d{2}$').hasMatch(time)) {
      // Parse the time string
      DateTime parsedTime = DateFormat('HH:mm:ss').parse(time);
      // Format the time in 12-hour format
      String formattedTime = DateFormat('h:mm a').format(parsedTime);
      return formattedTime;
    }
    // Return the original input if it's already in the expected 12-hour format
    else if (RegExp(r'^\d{1,2}:\d{2} [ap]m$').hasMatch(time)) {
      return time;
    }
    // Return the original input if it doesn't match any expected formats
    else {
      return time;
    }
  }

  static String apiDateTime(String timestamp) {
    String apiDatetimeString = timestamp;
    DateTime apiDateTime = DateTime.parse(apiDatetimeString);
    String formattedDatetime =
        DateFormat('yyyy/MM/dd hh:mm a').format(apiDateTime);
    return formattedDatetime;
  }
}
