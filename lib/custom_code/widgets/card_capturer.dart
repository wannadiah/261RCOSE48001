// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:provider/provider.dart';

import 'package:screenshot/screenshot.dart';
import 'package:step_quest/components/challenge_card_preview_widget.dart';

ScreenshotController cardScreenshotController = ScreenshotController();

class CardCapturer extends StatefulWidget {
  const CardCapturer({
    super.key,
    this.width,
    this.height,
    this.titleText,
    this.descText,
    this.imageUrl,
    this.colorHex, // This is now a native Color? object automatically
  });

  final double? width;
  final double? height;
  final String? titleText;
  final String? descText;
  final String? imageUrl;
  final Color? colorHex; // FIXED TYPE: Changed from String? to Color?

  @override
  State<CardCapturer> createState() => _CardCapturerState();
}

class _CardCapturerState extends State<CardCapturer> {
  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: cardScreenshotController,
      child: Container(
        width: widget.width,
        height: widget.height,
        child: ChallengeCardPreviewWidget(
          parameter1: widget.titleText,
          parameter2: widget.descText,
          parameter3: widget.imageUrl,
          // Since both sides are Color types, they snap together perfectly!
          parameter4: widget.colorHex ?? Colors.white,
        ),
      ),
    );
  }
}
