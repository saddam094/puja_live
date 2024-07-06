import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ivs_broadcaster/ivs_broadcaster.dart';

class BroadCastPreviewScreen extends StatefulWidget {
  const BroadCastPreviewScreen({super.key});

  @override
  State<BroadCastPreviewScreen> createState() => _BroadCastPreviewScreenState();
}

class _BroadCastPreviewScreenState extends State<BroadCastPreviewScreen> {
  IvsBroadcaster? ivsBroadcaster;
  String key = "sk_ap-south-1_viN3xX7gow2x_Pu1ScFQQ2GtfP6HNxx4JySbVxESpgR";
  String url = "rtmps://0d2219dd3bee.global-contribute.live-video.net:443/app/";

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    ivsBroadcaster = IvsBroadcaster.instance;
    ivsBroadcaster!.broadcastStateController.stream.listen((event) {
      if (kDebugMode) {
        print('Broadcast State: ${event.name}');
      }
      log('Broadcast State: ${event.name}');
    });
  }

  Future<void> startBroadcast() async {
    try {
      await ivsBroadcaster?.startBroadcast(
        imgset: url,
        streamKey: key,
      );
      log('Broadcast started');
    } catch (e) {
      log('Error starting broadcast: $e');
    }
  }

  Future<void> stopBroadcast() async {
    try {
      await ivsBroadcaster?.stopBroadcast();
      log('Broadcast stopped');
    } catch (e) {
      log('Error stopping broadcast: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Start Broadcast
            ElevatedButton(
              onPressed: startBroadcast,
              child: const Text('Start Broadcast'),
            ),
            // Stop Broadcast
            ElevatedButton(
              onPressed: stopBroadcast,
              child: const Text('Stop Broadcast'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ivsBroadcaster?.changeCamera();
        },
        label: StreamBuilder<BroadCastState>(
          stream: ivsBroadcaster?.broadcastStateController.stream,
          builder: (context, snapshot) {
            return Text(
              snapshot.data?.name ?? 'INVALID',
            );
          },
        ),
      ),
      body: ivsBroadcaster?.previewWidget,
    );
  }
}