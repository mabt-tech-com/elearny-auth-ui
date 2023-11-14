import '/flutter_shared/flutter_shared_icon_button.dart';
import '/flutter_shared/flutter_shared_theme.dart';
import '/flutter_shared/flutter_shared_util.dart';
import '/flutter_shared/flutter_shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
      backgroundColor: FFTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FFTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FFIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Tooltip(
            message: "Log out",
            child: Icon(
              Icons.logout_outlined,
              color: FFTheme.of(context).primaryText,
              size: 30,
            ),
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
          child: Text(
            'Home Page',
            style: FFTheme.of(context).displaySmall.override(
              fontFamily: 'Urbanist',
              fontSize: 20,
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
                  'Welcome ',
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
                  child: Image.asset(
                    'assets/images/notion-avatar.png',
                    width: 199,
                    height: 164,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                  child: Text(
                    'welcome to Our Application ',
                    textAlign: TextAlign.center,
                    style: FFTheme.of(context).labelMedium,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('ChangePassword');
                  },
                  child: Text(
                    'Change Password',
                    style: FFTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: FFTheme.of(context).primary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('LoginPage');
                    },
                    text: 'Logout ',
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
