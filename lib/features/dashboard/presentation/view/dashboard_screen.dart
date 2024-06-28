import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:puja_live/features/brodcast/presentation/view/brodcast_screen.dart';
import 'package:puja_live/res/color/app_color.dart';
import 'package:puja_live/res/constant/constant_data.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

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
              Get.to(() => const BroadcastScreen());
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




/// hallo it is by shushant sir
// import 'package:flutter/material.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';
//
// class IVSBroadcaster extends StatefulWidget {
//   @override
//   _IVSBroadcasterState createState() => _IVSBroadcasterState();
// }
//
// class _IVSBroadcasterState extends State<IVSBroadcaster> {
//   final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
//   RTCPeerConnection? _peerConnection;
//
//   @override
//   void initState() {
//     super.initState();
//     initRenderers();
//     startBroadcast();
//   }
//
//   Future<void> initRenderers() async {
//     await _localRenderer.initialize();
//   }
//
//   Future<void> startBroadcast() async {
//     // Set up camera and microphone
//     final stream = await navigator.mediaDevices.getUserMedia({
//       'video': true,
//       'audio': true,
//     });
//
//     _localRenderer.srcObject = stream;
//
//     // Set up RTCPeerConnection
//     final configuration = {
//       'iceServers': [
//         {'urls': 'stun:stun.l.google.com:19302'}
//       ]
//     };
//
//     _peerConnection = await createPeerConnection(configuration);
//     stream.getTracks().forEach((track) {
//       _peerConnection?.addTrack(track, stream);
//     });
//
//     // Set up IVS streaming (RTMP)
//     final rtmpUrl = 'rtmp://your-ingest-server/app/streamKey'; // Replace with your ingest server and stream key
//     final videoTrack = stream.getVideoTracks().first;
//
//     await _peerConnection?.addTransceiver(
//       track: videoTrack,
//       init: RTCRtpTransceiverInit(direction: TransceiverDirection.SendOnly),
//     );
//
//     // Implement streaming logic using the RTMP URL
//     // This requires further integration with an RTMP library if needed
//   }
//
//   @override
//   void dispose() {
//     _localRenderer.dispose();
//     _peerConnection?.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('IVS Broadcaster')),
//       body: RTCVideoView(_localRenderer),
//     );
//   }
// }
