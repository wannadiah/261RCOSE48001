// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
// State Management Imports
import 'package:provider/provider.dart';

// 1. Make sure these three packages are explicitly imported at the top
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_package;
import 'dart:typed_data';
import 'package:step_quest/custom_code/widgets/card_capturer.dart';

Future<String?> convertWidgetToImage() async {
  try {
    // 2. We use 'cardScreenshotController' (the global one from our custom widget)
    // instead of the old 'screenshotController' variable!
    final Uint8List? imageBytes = await cardScreenshotController.capture();

    if (imageBytes == null) {
      print("Capture returned null bytes.");
      return null;
    }

    // 3. Generate a totally unique filename for the trading card
    final String fileName = 'card_${DateTime.now().millisecondsSinceEpoch}.png';
    final supabaseClient = supabase_package.Supabase.instance.client;

    // 4. Upload the byte stream straight into your Supabase storage bucket
    await supabaseClient.storage
        .from(
            'challenge_image') // Make sure this matches your bucket name exactly
        .uploadBinary(fileName, imageBytes,
            fileOptions:
                const supabase_package.FileOptions(contentType: 'image/png'));

    // 5. Retrieve and return the public cloud link
    final String publicUrl =
        supabaseClient.storage.from('challenge_image').getPublicUrl(fileName);
    return publicUrl;
  } catch (e) {
    print("Failed to capture and upload card image: $e");
    return null;
  }
}
