import '/flutter_shared/flutter_shared_util.dart';
import 'forgot_password_page_widget.dart' show ForgotPasswordPageWidget;
import 'package:flutter/material.dart';

class ForgotPasswordPageModel
    extends FFModel<ForgotPasswordPageWidget> {

  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  void initState(BuildContext context) {}

  void dispose() {
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
