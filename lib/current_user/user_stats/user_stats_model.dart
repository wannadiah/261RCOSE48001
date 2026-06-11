import '/backend/supabase/supabase.dart';
import '/current_user/challenge_card/challenge_card_widget.dart';
import '/current_user/streak_day/streak_day_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'user_stats_widget.dart' show UserStatsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserStatsModel extends FlutterFlowModel<UserStatsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StreakDay.
  late StreakDayModel streakDayModel1;
  // Model for StreakDay.
  late StreakDayModel streakDayModel2;
  // Model for StreakDay.
  late StreakDayModel streakDayModel3;
  // Model for StreakDay.
  late StreakDayModel streakDayModel4;
  // Model for StreakDay.
  late StreakDayModel streakDayModel5;
  // Model for StreakDay.
  late StreakDayModel streakDayModel6;
  // Model for StreakDay.
  late StreakDayModel streakDayModel7;
  // Model for ChallengeCard.
  late ChallengeCardModel challengeCardModel1;
  // Model for ChallengeCard.
  late ChallengeCardModel challengeCardModel2;
  // Model for ChallengeCard.
  late ChallengeCardModel challengeCardModel3;

  @override
  void initState(BuildContext context) {
    streakDayModel1 = createModel(context, () => StreakDayModel());
    streakDayModel2 = createModel(context, () => StreakDayModel());
    streakDayModel3 = createModel(context, () => StreakDayModel());
    streakDayModel4 = createModel(context, () => StreakDayModel());
    streakDayModel5 = createModel(context, () => StreakDayModel());
    streakDayModel6 = createModel(context, () => StreakDayModel());
    streakDayModel7 = createModel(context, () => StreakDayModel());
    challengeCardModel1 = createModel(context, () => ChallengeCardModel());
    challengeCardModel2 = createModel(context, () => ChallengeCardModel());
    challengeCardModel3 = createModel(context, () => ChallengeCardModel());
  }

  @override
  void dispose() {
    streakDayModel1.dispose();
    streakDayModel2.dispose();
    streakDayModel3.dispose();
    streakDayModel4.dispose();
    streakDayModel5.dispose();
    streakDayModel6.dispose();
    streakDayModel7.dispose();
    challengeCardModel1.dispose();
    challengeCardModel2.dispose();
    challengeCardModel3.dispose();
  }
}
