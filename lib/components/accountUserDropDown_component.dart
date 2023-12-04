// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../flutter_shared/flutter_shared_animations.dart';
import '../flutter_shared/flutter_shared_theme.dart';
import '../flutter_shared/flutter_shared_util.dart';
import 'accountUserDropDown_model.dart';

/*import 'account_user_dropdown_model.dart';
export 'account_user_dropdown_model.dart';*/

class AccountUserDropdownWidget extends StatefulWidget {
  const AccountUserDropdownWidget({Key? key}) : super(key: key);

  @override
  _AccountUserDropdownWidgetState createState() =>
      _AccountUserDropdownWidgetState();
}

class _AccountUserDropdownWidgetState extends State<AccountUserDropdownWidget>
    with TickerProviderStateMixin {
   late AccountUserDropdownModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0,
          end: 1,
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: const Offset(0, 0.873),
          end: const Offset(0, 0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: const Offset(40, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0, 0),
          end: const Offset(115, 0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountUserDropdownModel());

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
    //_model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
          child: Container(
            width: 320,
            decoration: BoxDecoration(
              color: FFTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x33000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: FFTheme.of(context).alternate,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Account Options',
                            textAlign: TextAlign.start,
                            style: FFTheme.of(context).labelMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close_rounded,
                              color: FFTheme.of(context).secondaryText,
                              size: 32,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: FFTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: FFTheme.of(context).primary,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                  width: 36,
                                  height: 36,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Casper Ghost',
                                style: FFTheme.of(context).bodyLarge,
                              ),
                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  'ghost@domain.com',
                                  style: FFTheme.of(context)
                                      .bodySmall
                                      .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FFTheme.of(context)
                                        .primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: FFTheme.of(context).alternate,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 4),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {},
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: _model.mouseRegionHovered1!
                                ? FFTheme.of(context).primaryBackground
                                : FFTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Icon(
                                    Icons.account_circle_outlined,
                                    color: FFTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'My Account',
                                      style: FFTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = false);
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 4),
                    child: MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.basic ?? MouseCursor.defer,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: _model.mouseRegionHovered2!
                              ? FFTheme.of(context).primaryBackground
                              : FFTheme.of(context)
                              .secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color:
                                  FFTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Text(
                                    'Settings',
                                    style:
                                    FFTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = false);
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 4),
                    child: MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: _model.mouseRegionHovered3!
                              ? FFTheme.of(context).primaryBackground
                              : FFTheme.of(context)
                              .secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Icon(
                                  Icons.attach_money_rounded,
                                  color:
                                  FFTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Text(
                                    'Billing Details',
                                    style:
                                    FFTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = false);
                      }),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FFTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setDarkModeSetting(
                                        context, ThemeMode.light);
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        Theme.of(context).brightness ==
                                            Brightness.light
                                            ? FFTheme.of(context)
                                            .secondaryBackground
                                            : FFTheme.of(context)
                                            .primaryBackground,
                                        FFTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          Theme.of(context).brightness ==
                                              Brightness.light
                                              ? FFTheme.of(context)
                                              .alternate
                                              : FFTheme.of(context)
                                              .primaryBackground,
                                          FFTheme.of(context)
                                              .alternate,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.wb_sunny_rounded,
                                          color: Theme.of(context).brightness ==
                                              Brightness.light
                                              ? FFTheme.of(context)
                                              .primaryText
                                              : FFTheme.of(context)
                                              .secondaryText,
                                          size: 16,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              4, 0, 0, 0),
                                          child: Text(
                                            'Light Mode',
                                            style: FFTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily:
                                              'Plus Jakarta Sans',
                                              color: Theme.of(context)
                                                  .brightness ==
                                                  Brightness.light
                                                  ? FFTheme.of(
                                                  context)
                                                  .primaryText
                                                  : FFTheme.of(
                                                  context)
                                                  .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setDarkModeSetting(context, ThemeMode.dark);
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).brightness ==
                                          Brightness.dark
                                          ? FFTheme.of(context)
                                          .secondaryBackground
                                          : FFTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Theme.of(context).brightness ==
                                            Brightness.dark
                                            ? FFTheme.of(context)
                                            .alternate
                                            : FFTheme.of(context)
                                            .primaryBackground,
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.nightlight_round,
                                          color: Theme.of(context).brightness ==
                                              Brightness.dark
                                              ? FFTheme.of(context)
                                              .primaryText
                                              : FFTheme.of(context)
                                              .secondaryText,
                                          size: 16,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              4, 0, 0, 0),
                                          child: Text(
                                            'Dark Mode',
                                            style: FFTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily:
                                              'Plus Jakarta Sans',
                                              color: Theme.of(context)
                                                  .brightness ==
                                                  Brightness.dark
                                                  ? FFTheme.of(
                                                  context)
                                                  .primaryText
                                                  : FFTheme.of(
                                                  context)
                                                  .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                  Divider(
                    thickness: 1,
                    color: FFTheme.of(context).alternate,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: _model.mouseRegionHovered4!
                              ? FFTheme.of(context).primaryBackground
                              : FFTheme.of(context)
                              .secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Icon(
                                  Icons.login_rounded,
                                  color:
                                  FFTheme.of(context).primaryText,
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Text(
                                    'Log out',
                                    style:
                                    FFTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = false);
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        ),
      ],
    );
  }
}
