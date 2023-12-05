
import 'package:elearny_auth/flutter_shared/flutter_shared_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../flutter_shared/flutter_shared_animations.dart';
import '../../flutter_shared/flutter_shared_icon_button.dart';
import '../../flutter_shared/flutter_shared_model.dart';
import '../../flutter_shared/flutter_shared_theme.dart';
import '../../flutter_shared/flutter_shared_widgets.dart';
import 'edit_profile_page_model.dart';
export 'edit_profile_page_model.dart';


class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({Key? key}) : super(key: key);

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget>
    with TickerProviderStateMixin {
  late EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 810.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileModel());

    _model.yourNameController1 ??= TextEditingController();
    _model.yourNameFocusNode1 ??= FocusNode();

    _model.yourNameController2 ??= TextEditingController();
    _model.yourNameFocusNode2 ??= FocusNode();

    _model.yourNameController3 ??= TextEditingController();
    _model.yourNameFocusNode3 ??= FocusNode();

    _model.yourNameController4 ??= TextEditingController();
    _model.yourNameFocusNode4 ??= FocusNode();

    _model.cityController1 ??= TextEditingController();
    _model.cityFocusNode1 ??= FocusNode();

    _model.cityController2 ??= TextEditingController();
    _model.cityFocusNode2 ??= FocusNode();

    _model.myBioController ??= TextEditingController();
    _model.myBioFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

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
      backgroundColor: FFTheme.of(context).secondaryBackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: FFTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          actions: const [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: FFIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 50,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FFTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                          child: Text(
                            'Edit your Profile',
                            style: FFTheme.of(context)
                                .headlineMedium
                                .override(
                              fontFamily: 'Urbanist',
                              color:
                              FFTheme.of(context).primaryText,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 1,
        ),
      ),
      
      
      body: SafeArea(
        top: true,
        child:
        // Container maxWidth 700 for web
        SingleChildScrollView(
          child: Align(
            alignment: const AlignmentDirectional(0.00, -1.00),
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 700,
              ),
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      // verify Email Row 

                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            color: FFTheme.of(context).accent1,
                            boxShadow: const [
                                BoxShadow(
                                blurRadius: 8,
                                color: Color(0x36000000),
                                offset: Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FFTheme.of(context).primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                        child: Icon(
                                          Icons.email,
                                          color: FFTheme.of(context).info,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                              child: Text(
                                                'Plaese verify Your email !',
                                                style: FFTheme.of(context).headlineSmall,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 12, 0),
                                              child: Text(
                                                'Enable security by email address, click the button below to send an email verification',
                                                style:
                                                FFTheme.of(context).bodySmall.override(
                                                  fontFamily: 'Plus Jakarta Sans',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Verify my email',
                                          options: FFButtonOptions(
                                            width: 200,
                                            height: 50,
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                            color: const Color(0x7F4B986C),
                                            textStyle:
                                            FFTheme.of(context).titleSmall.override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Colors.white,
                                            ),
                                            elevation: 3,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),


                      // profile_image_row
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 140,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: Container(
                                        width: 103,
                                        height: 103,
                                        decoration: BoxDecoration(
                                          color: FFTheme.of(context)
                                              .primary,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              2, 2, 2, 2),
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            child: Image.network(
                                              'https://i.imgur.com/oLYVGej.png',
                                              width: 85,
                                              height: 119,
                                              fit: BoxFit.cover,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                          'imageOnPageLoadAnimation']!),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Align(
                                    alignment: const AlignmentDirectional(1.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: ClipOval(



                                          child: Container(
                                            width: 38,
                                            height: 38,
                                            decoration: BoxDecoration(
                                              color: FFTheme.of(context)
                                                  .secondaryBackground,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: FFTheme.of(context)
                                                    .primary,
                                                width: 3,
                                              ),
                                            ),
                                            child: Align(
                                              alignment:
                                              const AlignmentDirectional(0.00, 0.00),
                                             /* child: Tooltip(
                                                message: "Edit Picture",
                                                textAlign: TextAlign.right,*/
                                              child: Icon(
                                                Icons.edit,
                                                color: FFTheme.of(context)
                                                    .secondaryText,
                                                size: 20,
                                              ),

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // email text
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: Text(
                          'AmineBT@gmail.com',
                          style: FFTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FFTheme.of(context).secondaryText,
                          ),
                        ),
                      ),

                      // email text field
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.yourNameController1,
                          focusNode: _model.yourNameFocusNode1,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your Email',
                            labelStyle: FFTheme.of(context).labelMedium,
                            hintStyle: FFTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                            FFTheme.of(context).secondaryBackground,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FFTheme.of(context).bodyMedium,
                          validator: _model.yourNameController1Validator
                              .asValidator(context),
                        ),
                      ),

                      // firstName textfield
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.yourNameController2,
                          focusNode: _model.yourNameFocusNode2,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your First Name',
                            labelStyle: FFTheme.of(context).labelMedium,
                            hintStyle: FFTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                            FFTheme.of(context).secondaryBackground,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FFTheme.of(context).bodyMedium,
                          validator: _model.yourNameController2Validator
                              .asValidator(context),
                        ),
                      ),

                      // lastName textfield
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.yourNameController3,
                          focusNode: _model.yourNameFocusNode3,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your Last Name',
                            labelStyle: FFTheme.of(context).labelMedium,
                            hintStyle: FFTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                            FFTheme.of(context).secondaryBackground,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FFTheme.of(context).bodyMedium,
                          validator: _model.yourNameController3Validator
                              .asValidator(context),
                        ),
                      ),

                      // Phone Number textfield
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.yourNameController4,
                          focusNode: _model.yourNameFocusNode4,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your Phone Number',
                            labelStyle: FFTheme.of(context).labelMedium,
                            hintStyle: FFTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                            FFTheme.of(context).secondaryBackground,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FFTheme.of(context).bodyMedium,
                          validator: _model.yourNameController4Validator
                              .asValidator(context),
                        ),
                      ),

                      // Address textfield
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.cityController1,
                          focusNode: _model.cityFocusNode1,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your Address',
                            labelStyle: FFTheme.of(context).labelMedium,
                            hintStyle: FFTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                            FFTheme.of(context).secondaryBackground,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FFTheme.of(context).bodyMedium,
                          validator: _model.cityController1Validator
                              .asValidator(context),
                        ),
                      ),

                      // BirthDate textfield
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                        child: TextFormField(
                          controller: _model.cityController2,
                          focusNode: _model.cityFocusNode2,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your Birth Date',
                            labelStyle: FFTheme.of(context).labelMedium,
                            hintStyle: FFTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                            FFTheme.of(context).secondaryBackground,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FFTheme.of(context).bodyMedium,
                          validator: _model.cityController2Validator
                              .asValidator(context),
                        ),
                      ),

                      // Bio textfield
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
                        child: TextFormField(
                          controller: _model.myBioController,
                          focusNode: _model.myBioFocusNode,
                          textCapitalization: TextCapitalization.sentences,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FFTheme.of(context).labelMedium,
                            hintText: 'Your bio',
                            hintStyle: FFTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                            FFTheme.of(context).secondaryBackground,
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FFTheme.of(context).bodyMedium,
                          textAlign: TextAlign.start,
                          maxLines: 3,
                          validator: _model.myBioControllerValidator
                              .asValidator(context),
                        ),
                      ),

                      // save changes button
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.05),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Save Changes',
                            options: FFButtonOptions(
                              width: 270,
                              height: 50,
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FFTheme.of(context).primary,
                              textStyle: FFTheme.of(context)
                                  .titleMedium
                                  .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                              ),
                              elevation: 2,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
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
        ),
      ),
    );
  }
}
