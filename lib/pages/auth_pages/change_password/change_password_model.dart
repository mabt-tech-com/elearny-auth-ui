import '/flutter_shared/flutter_shared_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FFModel<ChangePasswordWidget> {
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  String? Function(BuildContext, String?)? emailAddressController2Validator;
  String? Function(BuildContext, String?)? emailAddressController3Validator;


  void initState(BuildContext context) {
  }

  void dispose() {
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
