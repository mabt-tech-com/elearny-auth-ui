import '/flutter_shared/flutter_shared_animations.dart';
import '/flutter_shared/flutter_shared_icon_button.dart';
import '/flutter_shared/flutter_shared_theme.dart';
import '/flutter_shared/flutter_shared_util.dart';
import '/flutter_shared/flutter_shared_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  //late LoginPageModel _model;

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  FocusNode? emailAddressFieldFocusNode;
  TextEditingController? emailAddressFieldController;
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;


  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(-40.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();


     emailAddressFieldController ??= TextEditingController();
     emailAddressFieldFocusNode ??= FocusNode();
     passwordFieldController ??= TextEditingController();
     passwordFieldFocusNode ??= FocusNode();
     passwordFieldVisibility = false;

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFieldFocusNode?.dispose();
    emailAddressFieldController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldController?.dispose();
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

    return GestureDetector(
      onTap: () => unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FFTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: FFTheme.of(context).primaryBackground,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.00, -1.00),
                    child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.103,
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 12.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if ((Theme.of(context).brightness ==
                                                Brightness.light) ==
                                            true) {
                                          setDarkModeSetting(
                                              context, ThemeMode.dark);
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                        } else {
                                          setDarkModeSetting(
                                              context, ThemeMode.light);
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation']!
                                                .controller
                                                .reverse();
                                          }
                                        }
                                      },
                                      child: Container(
                                        width: 80.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF1F4F8),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: const Color(0xFFE0E3E7),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              const Align(
                                                alignment: AlignmentDirectional(
                                                    -0.90, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          6.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.wb_sunny_rounded,
                                                    color: Color(0xFF57636C),
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                              const Align(
                                                alignment: AlignmentDirectional(
                                                    1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 6.0, 0.0),
                                                  child: Icon(
                                                    Icons.mode_night_rounded,
                                                    color: Color(0xFF57636C),
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.00, 0.00),
                                                child: Container(
                                                  width: 36.0,
                                                  height: 36.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x430B0D0F),
                                                        offset:
                                                            Offset(0.0, 2.0),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'containerOnActionTriggerAnimation']!,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        18.0, 0.0, 0.0, 0.0),
                                    child: FFIconButton(
                                      borderColor:
                                          FFTheme.of(context).primary,
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 50.0,
                                      fillColor: FFTheme.of(context)
                                          .primaryBackground,
                                      hoverColor: FFTheme.of(context)
                                          .secondary,
                                      hoverIconColor:
                                          FFTheme.of(context).primary,
                                      icon: FaIcon(
                                        // ignore: deprecated_member_use
                                        FontAwesomeIcons.home,
                                        color: FFTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      onPressed: () {
                                        context.pushNamed('homePage');
                                        print(' Home Page IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(1.00, 0.00),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 25.0, 0.0),
                                        child: SelectionArea(
                                            child: Text(
                                          'Continue as guest',
                                          style: FFTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FFTheme.of(context)
                                                        .primary,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Container(
                              width: 360.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.00, 0.00),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Container(
                                        width: 305.0,
                                        height: 172.0,
                                        decoration: BoxDecoration(
                                          color: FFTheme.of(context)
                                              .primaryBackground,
                                          image: const DecorationImage(
                                            fit: BoxFit.contain,
                                            image: CachedNetworkImageProvider(
                                              'https://i.imgur.com/iU0DyFF.png',
                                            ),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    SelectionArea(
                                        child: Text(
                                      'Welcome back',
                                      style: FFTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Urbanist',
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w600,
                                            lineHeight: 1.2,
                                          ),
                                    )),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: SelectionArea(
                                          child: Text(
                                        'Welcome back! Please enter your details.',
                                        style: FFTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              lineHeight: 1.5,
                                            ),
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Form(
                                        key: formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 6.0, 0.0, 0.0),
                                                  child: TextFormField(
                                                    controller: emailAddressFieldController,
                                                    focusNode: emailAddressFieldFocusNode,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle:
                                                          FFTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FFTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 16.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      hintText:
                                                          'Enter your email',
                                                      hintStyle:
                                                          FFTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FFTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 16.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFD0D5DD),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FFTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFFDA29B),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFFDA29B),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  14.0,
                                                                  10.0,
                                                                  14.0,
                                                                  10.0),
                                                    ),
                                                    style: FFTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FFTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          lineHeight: 1.5,
                                                        ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    validator: null,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 0.0),
                                                    child: TextFormField(
                                                      controller: passwordFieldController,
                                                      focusNode: passwordFieldFocusNode,
                                                      obscureText: !passwordFieldVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        labelStyle:
                                                            FFTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FFTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        hintText: '••••••••',
                                                        hintStyle:
                                                            FFTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FFTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFD0D5DD),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FFTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    10.0,
                                                                    14.0,
                                                                    10.0),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => passwordFieldVisibility =
                                                                !passwordFieldVisibility,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            passwordFieldVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: FFTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FFTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FFTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      validator: null,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context
                                              .pushNamed('ForgotPasswordPage');
                                        },
                                        child: Text(
                                          'Forget password?',
                                          style: FFTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FFTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {

                                          // I added this
                                            context.pushNamed('homePage');

                                          /*
                                          if (formKey.currentState ==
                                                  null ||
                                              !formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }*/



                                        },
                                        text: 'Log in',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 44.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FFTheme.of(context)
                                              .primary,
                                          textStyle: FFTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FFTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                          elevation: 2.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 0.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: const Color(0xFFD0D5DD),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.network(
                                                    'https://i.imgur.com/7tykYQE.png',
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Sign in with Google',
                                                      style: FFTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color: const Color(0xFFD0D5DD),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.network(
                                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/480px-2021_Facebook_icon.svg.png',
                                                      width: 24.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: SelectionArea(
                                                          child: Text(
                                                        'Sign in with Facebook',
                                                        style: FFTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            'Don\'t have an account? ',
                                            style: FFTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: FFTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          )),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed('RegisterPage');
                                            },
                                            child: Text(
                                              'Sign up',
                                              style: FFTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: FFTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Expanded(
                  child: Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          'https://images.unsplash.com/photo-1521737852567-6949f3f9f2b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2047&q=80',
                        ).image,
                      ),
                          borderRadius: const BorderRadius.only(
                        // bottomLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        //topLeft: Radius.circular(20.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 1.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            48.0, 0.0, 48.0, 48.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 14.0,
                              sigmaY: 14.0,
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0x80FFFFFF),
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: const Color(0x7FFFFFFF),
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 24.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      'Management is doing things right; leadership is doing the right things.',
                                      style: FFTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Urbanist',
                                            color: const Color(0xFF0B191E),
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.2,
                                          ),
                                    )),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 6.0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  '— Peter Drucker',
                                                  style: FFTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0xFF0B191E),
                                                        fontSize: 24.0,
                                                        lineHeight: 1.2,
                                                      ),
                                                )),
                                              ),
                                              SelectionArea(
                                                  child: AutoSizeText(
                                                'The Tunisian Establishment \nfor Agile Management',
                                                style:
                                                    FFTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FFTheme
                                                                  .of(context)
                                                              .alternate,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          lineHeight: 1.5,
                                                        ),
                                                minFontSize: 1.0,
                                              )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              RatingBarIndicator(
                                                itemBuilder: (context, index) =>
                                                    const Icon(
                                                  Icons.star_outlined,
                                                  color: Color(0xFF0B191E),
                                                ),
                                                direction: Axis.horizontal,
                                                rating: 5.0,
                                                unratedColor: const Color(0xFF0B191E),
                                                itemCount: 5,
                                                itemSize: 24.0,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
