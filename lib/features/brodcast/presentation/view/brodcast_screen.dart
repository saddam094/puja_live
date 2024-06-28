import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ivs_broadcaster/ivs_broadcaster.dart';

class BroadcastScreen extends StatefulWidget {
  const BroadcastScreen({Key? key}) : super(key: key);

  @override
  State<BroadcastScreen> createState() => _BroadcastScreenState();
}

class _BroadcastScreenState extends State<BroadcastScreen> {
  IvsBroadcaster? ivsBroadcaster;
  late List<CameraDescription> cameras;
  CameraController? cameraController;

  String streamKey = "sk_ap-south-1_viN3xX7gow2x_Pu1ScFQQ2GtfP6HNxx4JySbVxESpgR";
  String url = "rtmps://0d2219dd3bee.global-contribute.live-video.net:443/app/";


  @override
  void initState() {
    super.initState();
    initializeCamera();
    ivsBroadcaster = IvsBroadcaster();
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(
      cameras[0],
      ResolutionPreset.high,
      enableAudio: true,
    );

    try {
      await cameraController!.initialize();
      setState(() {}); // Refresh UI after camera initialized
    } catch (e) {
      if (kDebugMode) {
        print('Error during cameraController initializing: $e');
      }
    }
  }

  @override
  void dispose() {
    cameraController?.dispose();
    ivsBroadcaster?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController == null || !cameraController!.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Broadcast Screen'),
        ),
        body: Stack(
          children: [
            CameraPreview(cameraController!),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Start Broadcast
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          if (kDebugMode) {
                            print('Starting broadcast...');
                          }
                          await ivsBroadcaster?.startBroadcast(
                            imgset: url,
                            streamKey: streamKey,
                          );
                          if (kDebugMode) {
                            print('Broadcast started successfully');
                          }
                        } catch (error) {
                          if (kDebugMode) {
                            print('Error starting broadcast: $error');
                          }
                        }
                      },
                      child: const Text('Start Broadcast'),
                    ),
                    // Stop Broadcast
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          if (kDebugMode) {
                            print('Stopping broadcast...');
                          }
                          await ivsBroadcaster?.stopBroadcast();
                          if (kDebugMode) {
                            print('Broadcast stopped successfully');
                          }
                        } catch (error) {
                          if (kDebugMode) {
                            print('Error stopping broadcast: $error');
                          }
                        }
                      },
                      child: const Text('Stop Broadcast'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}