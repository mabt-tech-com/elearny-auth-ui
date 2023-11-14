import '/flutter_shared/flutter_shared_animations.dart';
import '/flutter_shared/flutter_shared_icon_button.dart';
import '/flutter_shared/flutter_shared_theme.dart';
import '/flutter_shared/flutter_shared_util.dart';
import '/flutter_shared/flutter_shared_widgets.dart';
import 'dart:ui';
import 'login_page_widget.dart' show LoginPageWidget;
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

class LoginPageModel extends FFModel<LoginPageWidget> {

  String? Function(BuildContext, String?)? emailAddressFieldControllerValidator;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;


  void initState(BuildContext context) {
  }

  void dispose() {
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
