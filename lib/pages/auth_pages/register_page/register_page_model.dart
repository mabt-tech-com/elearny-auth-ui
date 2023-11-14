import '/flutter_shared/flutter_shared_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';



class RegisterPageModel extends FFModel<RegisterPageWidget> {

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  String? Function(BuildContext, String?)? emailAddressFieldController1Validator;
  String? Function(BuildContext, String?)? emailAddressFieldController2Validator;
  String? Function(BuildContext, String?)? emailAddressFieldController3Validator;
  String? Function(BuildContext, String?)? emailAddressFieldController4Validator;
  String? Function(BuildContext, String?)? passwordFieldController1Validator;
  String? Function(BuildContext, String?)? passwordFieldController2Validator;


  void initState(BuildContext context) {
  }

  void dispose() {
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
