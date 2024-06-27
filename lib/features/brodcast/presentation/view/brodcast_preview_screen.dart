import 'package:flutter/material.dart';

class BrodcastPreviewScreen extends StatefulWidget {
  const BrodcastPreviewScreen({super.key});

  @override
  State<BrodcastPreviewScreen> createState() => _BrodcastPreviewScreenState();
}

class _BrodcastPreviewScreenState extends State<BrodcastPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('BrodCast Preview Screen')),
    );
  }
}
