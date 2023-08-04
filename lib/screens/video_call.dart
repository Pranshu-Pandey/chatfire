import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key, required this.id, required this.name});
  final id;
  final name;

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ZegoUIKitPrebuiltCall(
          appID: 1124994028,
          appSign:
              '293c2941999d8f4cb3013f3ad233afb318064f9af27bf6da9e619188ed237480',
          callID: 'ready2', // Convert set of strings to a single string
          userID: widget.id.toString(),
          userName: widget.name
              .toString(), // Convert set of strings to a single string
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
            ..onOnlySelfInRoom = (context) => Navigator.pop(context),
        ),
      ),
    );
  }
}
