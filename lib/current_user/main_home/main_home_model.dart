import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'main_home_widget.dart' show MainHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainHomeModel extends FlutterFlowModel<MainHomeWidget> {
  ///  Local state fields for this page.

  int userSteps = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDailyStepCount] action in MainHome widget.
  int? dailySteps;
  // Stores action output result for [Custom Action - getDailyStepCount] action in Column widget.
  int? freshSteps;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}