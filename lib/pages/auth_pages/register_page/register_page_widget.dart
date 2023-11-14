import '/flutter_shared/flutter_shared_icon_button.dart';
import '/flutter_shared/flutter_shared_theme.dart';
import '/flutter_shared/flutter_shared_util.dart';
import '/flutter_shared/flutter_shared_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'register_page_model.dart';
export 'register_page_model.dart';

class RegisterPageWidget extends StatefulWidget {
  const RegisterPageWidget({Key? key}) : super(key: key);

  @override
  _RegisterPageWidgetState createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget> {

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  FocusNode? emailAddressFieldFocusNode1;
  TextEditingController? emailAddressFieldController1;

  FocusNode? emailAddressFieldFocusNode2;
  TextEditingController? emailAddressFieldController2;

  FocusNode? emailAddressFieldFocusNode3;
  TextEditingController? emailAddressFieldController3;

  FocusNode? emailAddressFieldFocusNode4;
  TextEditingController? emailAddressFieldController4;

  FocusNode? passwordFieldFocusNode1;
  TextEditingController? passwordFieldController1;
  late bool passwordFieldVisibility1;

  FocusNode? passwordFieldFocusNode2;
  TextEditingController? passwordFieldController2;
  late bool passwordFieldVisibility2;






  @override
  void initState() {
    super.initState();

    passwordFieldVisibility1 = false;
    passwordFieldVisibility2 = false;

     emailAddressFieldController1 ??= TextEditingController();
     emailAddressFieldFocusNode1 ??= FocusNode();

     emailAddressFieldController2 ??= TextEditingController();
     emailAddressFieldFocusNode2 ??= FocusNode();

     emailAddressFieldController3 ??= TextEditingController();
     emailAddressFieldFocusNode3 ??= FocusNode();

     emailAddressFieldController4 ??=
        TextEditingController(text: 'Email@gmail.com');
     emailAddressFieldFocusNode4 ??= FocusNode();

     passwordFieldController1 ??= TextEditingController();
     passwordFieldFocusNode1 ??= FocusNode();

     passwordFieldController2 ??= TextEditingController();
     passwordFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {

    unfocusNode.dispose();
    emailAddressFieldFocusNode1?.dispose();
    emailAddressFieldController1?.dispose();

    emailAddressFieldFocusNode2?.dispose();
    emailAddressFieldController2?.dispose();

    emailAddressFieldFocusNode3?.dispose();
    emailAddressFieldController3?.dispose();

    emailAddressFieldFocusNode4?.dispose();
    emailAddressFieldController4?.dispose();

    passwordFieldFocusNode1?.dispose();
    passwordFieldController1?.dispose();

    passwordFieldFocusNode2?.dispose();
    passwordFieldController2?.dispose();
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
              // Register Page Left Container that has the Image and Quote (text)
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Expanded(
                  child: Container(
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1572177812156-58036aae439c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
//                        bottomRight: Radius.circular(20),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        //topRight: Radius.circular(20),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 1.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(48, 0, 48, 48),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 14,
                              sigmaY: 14,
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0x10FFFFFF),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0x1AFFFFFF),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24, 24, 24, 24),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                          'Training, Expertise, Excellence – Welcome to Agile Management.',
                                          style: FFTheme.of(context)
                                              .headlineSmall
                                              .override(
                                            fontFamily: 'Urbanist',
                                            color: FFTheme.of(context)
                                                .primaryBackground,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.2,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 32, 0, 0),
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
                                                    .fromSTEB(0, 0, 0, 6),
                                                child: SelectionArea(
                                                    child: Text(
                                                      '— TheTeam',
                                                      style: FFTheme.of(
                                                          context)
                                                          .titleMedium
                                                          .override(
                                                        fontFamily:
                                                        'Plus Jakarta Sans',
                                                        color: FFTheme
                                                            .of(context)
                                                            .primaryBackground,
                                                        fontSize: 24,
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
                                                      color:
                                                      const Color(0x7FF1F4F8),
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      lineHeight: 1.5,
                                                    ),
                                                    minFontSize: 1,
                                                  )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              RatingBarIndicator(
                                                itemBuilder: (context, index) =>
                                                    Icon(
                                                      Icons.star_outlined,
                                                      color: FFTheme.of(
                                                          context)
                                                          .primaryBackground,
                                                    ),
                                                direction: Axis.horizontal,
                                                rating: 5,
                                                unratedColor:
                                                FFTheme.of(context)
                                                    .primaryBackground,
                                                itemCount: 5,
                                                itemSize: 24,
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

              // Right Register Container that has the textFields and buttons
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
                            height: MediaQuery.sizeOf(context).height * 0.098,
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        18, 0, 0, 0),
                                    child: FFIconButton(
                                      borderColor:
                                      FFTheme.of(context).primary,
                                      borderRadius: 10,
                                      borderWidth: 1,
                                      buttonSize: 50,
                                      fillColor: FFTheme.of(context)
                                          .primaryBackground,
                                      hoverColor: FFTheme.of(context)
                                          .secondary,
                                      hoverIconColor:
                                      FFTheme.of(context).primary,
                                      icon: FaIcon(
                                        FontAwesomeIcons.home,
                                        color: FFTheme.of(context)
                                            .primary,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment:
                                      const AlignmentDirectional(1.00, 0.00),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 25, 0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed('homePage');
                                          },
                                          child: Text(
                                            'Continue as Guest',
                                            style: FFTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily:
                                              'Plus Jakarta Sans',
                                              color: FFTheme.of(
                                                  context)
                                                  .primary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                              TextDecoration.underline,
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
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Container(
                              width: 360,
                              height: MediaQuery.sizeOf(context).height * 1,
                              decoration: const BoxDecoration(),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Create Your Account',
                                      style: FFTheme.of(context)
                                          .headlineSmall
                                          .override(
                                        fontFamily: 'Urbanist',
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        lineHeight: 1.2,
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
                                            0, 12, 0, 0),
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
                                          0, 25, 0, 0),
                                      child: Form(
                                        key: formKey,
                                        autovalidateMode:
                                        AutovalidateMode.disabled,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            // FirstName Column
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 6, 0, 0),
                                                  child: TextFormField(
                                                    controller:  emailAddressFieldController1,
                                                    focusNode:   emailAddressFieldFocusNode1,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'First Name',
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
                                                        fontSize: 16,
                                                        lineHeight: 1.5,
                                                      ),
                                                      hintText:
                                                      'Enter your first name',
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
                                                        fontSize: 16,
                                                        lineHeight: 1.5,
                                                      ),
                                                      enabledBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                          Color(0xFFD0D5DD),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                      ),
                                                      focusedBorder:
                                                      OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FFTheme
                                                              .of(context)
                                                              .secondaryText,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                      ),
                                                      errorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                          Color(0xFFFDA29B),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                      ),
                                                      focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                          Color(0xFFFDA29B),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                      ),
                                                      contentPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(14, 10,
                                                          14, 10),
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
                                                      fontSize: 16,
                                                      lineHeight: 1.5,
                                                    ),
                                                    validator: null,
                                                  ),
                                                ),
                                              ],
                                            ),

                                            // LastName Column
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 6, 0, 0),
                                                    child: TextFormField(
                                                      controller: emailAddressFieldController2,
                                                      focusNode: emailAddressFieldFocusNode2,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Last Name',
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        hintText:
                                                        'Enter your last name',
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFD0D5DD),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FFTheme
                                                                .of(context)
                                                                .secondaryText,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(14,
                                                            10, 14, 10),
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
                                                        fontSize: 16,
                                                        lineHeight: 1.5,
                                                      ),
                                                      validator: null,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // PhoneNumber Column
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 6, 0, 0),
                                                    child: TextFormField(
                                                      controller: emailAddressFieldController3,
                                                      focusNode: emailAddressFieldFocusNode3,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText:
                                                        'Phone Number !',
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        hintText:
                                                        'Enter your phone number',
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFD0D5DD),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FFTheme
                                                                .of(context)
                                                                .secondaryText,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(14,
                                                            10, 14, 10),
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
                                                        fontSize: 16,
                                                        lineHeight: 1.5,
                                                      ),
                                                      keyboardType:
                                                      TextInputType.phone,
                                                      validator: null,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 6, 0, 0),
                                                    child: TextFormField(
                                                      controller: emailAddressFieldController4,
                                                      focusNode: emailAddressFieldFocusNode4,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFD0D5DD),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FFTheme
                                                                .of(context)
                                                                .secondaryText,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(14,
                                                            10, 14, 10),
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
                                                        fontSize: 16,
                                                        lineHeight: 1.5,
                                                      ),
                                                      keyboardType:
                                                      TextInputType
                                                          .emailAddress,
                                                      validator: null,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // Password Column
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 6, 0, 0),
                                                    child: TextFormField(
                                                      controller: passwordFieldController1,
                                                      focusNode: passwordFieldFocusNode1,
                                                      obscureText: !passwordFieldVisibility1,
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
                                                          fontSize: 16,
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFD0D5DD),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FFTheme
                                                                .of(context)
                                                                .secondaryText,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(14,
                                                            10, 14, 10),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                                () =>
                                                                passwordFieldVisibility1 =
                                                               !passwordFieldVisibility1,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                              true),
                                                          child: Icon(
                                                            passwordFieldVisibility1
                                                                ? Icons
                                                                .visibility_outlined
                                                                : Icons
                                                                .visibility_off_outlined,
                                                            color: FFTheme
                                                                .of(context)
                                                                .secondaryText,
                                                            size: 16,
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
                                                        fontSize: 16,
                                                        lineHeight: 1.5,
                                                      ),
                                                      validator: null,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // ConfirmPassword Column
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 6, 0, 0),
                                                    child: TextFormField(
                                                      controller: passwordFieldController2,
                                                      focusNode: passwordFieldFocusNode2,
                                                      obscureText: !passwordFieldVisibility2,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText:
                                                        'Confirm Password',
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
                                                          fontSize: 16,
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
                                                          fontSize: 16,
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFD0D5DD),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FFTheme
                                                                .of(context)
                                                                .secondaryText,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          const BorderSide(
                                                            color: Color(
                                                                0xFFFDA29B),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                        ),
                                                        contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(14,
                                                            10, 14, 10),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                                () =>
                                                                passwordFieldVisibility2 =
                                                               !passwordFieldVisibility2,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                              true),
                                                          child: Icon(
                                                            passwordFieldVisibility2
                                                                ? Icons
                                                                .visibility_outlined
                                                                : Icons
                                                                .visibility_off_outlined,
                                                            color: FFTheme
                                                                .of(context)
                                                                .secondaryText,
                                                            size: 16,
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
                                                        fontSize: 16,
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
                                          0, 24, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (formKey.currentState ==
                                              null ||
                                              !formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                        },
                                        text: 'Register',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 44,
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                          iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
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
                                          elevation: 2,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 24, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                                'Already have an account? ',
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
                                              context.pushNamed('LoginPage');
                                            },
                                            child: Text(
                                              'Sign in',
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

                                    // Terms of use & Privacy Policy
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 24, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                                'Terms of use',
                                                style: FFTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  color: FFTheme.of(
                                                      context)
                                                      .primary,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
                                          SelectionArea(
                                              child: Text(
                                                '   |   ',
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
                                          SelectionArea(
                                              child: Text(
                                                'Privacy Policy',
                                                style: FFTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  color: FFTheme.of(
                                                      context)
                                                      .primary,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
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
            ],
          ),
        ),
      ),
    );
  }
}
