import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'streak_day_model.dart';
export 'streak_day_model.dart';

class StreakDayWidget extends StatefulWidget {
  const StreakDayWidget({
    super.key,
    bool? active,
    bool? completed,
    String? day,
  })  : this.active = active ?? false,
        this.completed = completed ?? true,
        this.day = day ?? 'Mon';

  final bool active;
  final bool completed;
  final String day;

  @override
  State<StreakDayWidget> createState() => _StreakDayWidgetState();
}

class _StreakDayWidgetState extends State<StreakDayWidget> {
  late StreakDayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StreakDayModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: widget!.active
                ? FlutterFlowTheme.of(context).primary
                : Color(0x00000000),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 20.0,
            height: 20.0,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                if (widget!.completed ? true : false)
                  Icon(
                    Icons.check_rounded,
                    color: widget!.active
                        ? Colors.white
                        : FlutterFlowTheme.of(context).secondaryText,
                    size: 20.0,
                  ),
                if (widget!.completed ? false : true)
                  Icon(
                    Icons.directions_walk_rounded,
                    color: widget!.active
                        ? Colors.white
                        : FlutterFlowTheme.of(context).secondaryText,
                    size: 20.0,
                  ),
              ],
            ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.day,
            'Mon',
          ),
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                ),
                color: widget!.active
                    ? FlutterFlowTheme.of(context).primaryText
                    : FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
