// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Play Store imports. json, math, etc.
import 'dart:convert';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/index.dart'; // Imports pages

// --- CRITICAL IMPORT FOR THE HEALTH DATA INTERFACE ---
import 'package:health/health.dart';

Future<int?> getDailyStepCount() async {
  // 1. Instantiate the newer package configuration via Singleton
  final Health health = Health();

  // Initialize the native hooks required for health plugins
  await health.configure();

  // 2. Define the types of health tracking targets we wish to read
  final types = [HealthDataType.STEPS];
  final permissions = [HealthDataAccess.READ];

  // 3. Define the tracking window (From midnight today up until the current exact second)
  final now = DateTime.now();
  final midnight = DateTime(now.year, now.month, now.day);

  try {
    // 4. Request internal operating system permissions from the device user
    bool hasPermissions =
        await health.hasPermissions(types, permissions: permissions) ?? false;

    if (!hasPermissions) {
      // Prompt permissions sequence if missing
      hasPermissions =
          await health.requestAuthorization(types, permissions: permissions);
    }

    // 5. Fetch total aggregated steps if permissions have been cleared
    if (hasPermissions) {
      int? steps = await health.getTotalStepsInInterval(midnight, now);

      // If the sensor successfully queries but returns null, fallback safely to 0
      return steps ?? 0;
    } else {
      // Permissions were explicitly denied by the end user
      debugPrint("Health Framework: Authorization profile was rejected.");
      return null;
    }
  } catch (error) {
    // Return null so your UI logic can catch the exception gracefully
    debugPrint("Health Framework Error occurred reading sensors: $error");
    return null;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
