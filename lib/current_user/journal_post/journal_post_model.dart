import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'journal_post_widget.dart' show JournalPostWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JournalPostModel extends FlutterFlowModel<JournalPostWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for post_title widget.
  FocusNode? postTitleFocusNode;
  TextEditingController? postTitleTextController;
  String? Function(BuildContext, String?)? postTitleTextControllerValidator;
  // State field(s) for post_body widget.
  FocusNode? postBodyFocusNode;
  TextEditingController? postBodyTextController;
  String? Function(BuildContext, String?)? postBodyTextControllerValidator;
  bool isDataUploading_uploadData41e = false;
  FFUploadedFile uploadedLocalFile_uploadData41e =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData41e = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    postTitleFocusNode?.dispose();
    postTitleTextController?.dispose();

    postBodyFocusNode?.dispose();
    postBodyTextController?.dispose();
  }
}
