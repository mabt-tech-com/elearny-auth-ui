import '/flutter_shared/flutter_shared_icon_button.dart';
import '/flutter_shared/flutter_shared_theme.dart';
import '/flutter_shared/flutter_shared_util.dart';
import '/flutter_shared/flutter_shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
export 'change_password_model.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({Key? key}) : super(key: key);

  @override
  _ChangePasswordWidgetState createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {

  TextEditingController? emailAddressController1;
  TextEditingController? emailAddressController2;
  TextEditingController? emailAddressController3;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  late bool emailAddressVisibility1;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  late bool emailAddressVisibility2;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode3;
  late bool emailAddressVisibility3;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    emailAddressVisibility1 = false;
    emailAddressVisibility2 = false;
    emailAddressVisibility3 = false;

     emailAddressController1 ??= TextEditingController();
     emailAddressFocusNode1 ??= FocusNode();
     emailAddressController2 ??= TextEditingController();
     emailAddressFocusNode2 ??= FocusNode();
     emailAddressController3 ??= TextEditingController();
     emailAddressFocusNode3 ??= FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    emailAddressFocusNode1?.dispose();
    emailAddressController1?.dispose();
    emailAddressFocusNode2?.dispose();
    emailAddressController2?.dispose();
    emailAddressFocusNode3?.dispose();
    emailAddressController3?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FFTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FFTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FFIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FFTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
          child: Text(
            'Back',
            style: FFTheme.of(context).displaySmall.override(
              fontFamily: 'Urbanist',
              fontSize: 16,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Align(
        alignment: const AlignmentDirectional(0.00, -1.00),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(
            maxWidth: 570,
          ),
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Text(
                  'Change Password',
                  style: FFTheme.of(context).headlineMedium.override(
                    fontFamily: 'Urbanist',
                    fontSize: 30,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/forgot_password_img.png',
                      width: 254,
                      height: 245,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                  child: Text(
                    'Update your password for enhanced account security. Enter your old password, choose a new one, and click to save the changes.',
                    textAlign: TextAlign.center,
                    style: FFTheme.of(context).labelMedium,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller:  emailAddressController1,
                    focusNode:  emailAddressFocusNode1,
                    obscureText: !emailAddressVisibility1,
                    decoration: InputDecoration(
                      labelText: 'Your old password',
                      labelStyle: FFTheme.of(context).labelMedium,
                      hintText: 'Enter your old password',
                      hintStyle: FFTheme.of(context).labelMedium,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).secondaryText,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor:
                      FFTheme.of(context).secondaryBackground,
                      contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                              () => emailAddressVisibility1 =
                          !emailAddressVisibility1,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          emailAddressVisibility1
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FFTheme.of(context).bodyMedium,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FFTheme.of(context).primary,
                    validator:   null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: emailAddressController2,
                    focusNode:  emailAddressFocusNode2,
                    obscureText: !emailAddressVisibility2,
                    decoration: InputDecoration(
                      labelText: 'Your new password',
                      labelStyle: FFTheme.of(context).labelMedium,
                      hintText: 'Enter your new password',
                      hintStyle: FFTheme.of(context).labelMedium,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).secondaryText,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor:
                      FFTheme.of(context).secondaryBackground,
                      contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                              () => emailAddressVisibility2 =
                          !emailAddressVisibility2,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          emailAddressVisibility2
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FFTheme.of(context).bodyMedium,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FFTheme.of(context).primary,
                    validator: null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: emailAddressController3,
                    focusNode: emailAddressFocusNode3,
                    obscureText: !emailAddressVisibility3,
                    decoration: InputDecoration(
                      labelText: 'Confirm new password',
                      labelStyle: FFTheme.of(context).labelMedium,
                      hintText: 'Confirm your new password',
                      hintStyle: FFTheme.of(context).labelMedium,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).secondaryText,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FFTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor:
                      FFTheme.of(context).secondaryBackground,
                      contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                              () => emailAddressVisibility3 =
                          !emailAddressVisibility3,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          emailAddressVisibility3
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FFTheme.of(context).bodyMedium,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FFTheme.of(context).primary,
                    validator: null,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button-Login pressed ...');
                    },
                    text: 'Send Link',
                    options: FFButtonOptions(
                      width: 270,
                      height: 50,
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FFTheme.of(context).primary,
                      textStyle: FFTheme.of(context).titleSmall,
                      elevation: 3,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
