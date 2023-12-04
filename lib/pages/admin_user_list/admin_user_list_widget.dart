// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import '../../components/accountUserDropDown_component.dart';
import '../../flutter_shared/flutter_shared_choice_chips.dart';
import '../../flutter_shared/flutter_shared_icon_button.dart';
import '../../flutter_shared/flutter_shared_theme.dart';
import '../../flutter_shared/flutter_shared_util.dart';
import 'package:flutter/material.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../flutter_shared/form_field_controller.dart';
import 'admin_user_list_model.dart';
export 'admin_user_list_model.dart';




class AdminUserListWidget extends StatefulWidget {
  const AdminUserListWidget({Key? key}) : super(key: key);

  @override
  _AdminUserListWidgetState createState() => _AdminUserListWidgetState();
}

class _AdminUserListWidgetState extends State<AdminUserListWidget> {
  late AdminUserListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
   _model = createModel(context, () => AdminUserListModel());
   _model.textController ??= TextEditingController();
   _model.textFieldFocusNode ??= FocusNode();

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

    return GestureDetector(

      /*
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      */


      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FFTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.00, -1.00),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 1000.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Builder(
                                  builder: (context) => Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showAlignedDialog(
                                          barrierColor: Color(0x001D2428),
                                          context: context,
                                          isGlobal: false,
                                          avoidOverflow: true,
                                          targetAnchor: const AlignmentDirectional(1, 1)
                                              .resolve(Directionality.of(context)),
                                          followerAnchor: const AlignmentDirectional(1, -1)
                                              .resolve(Directionality.of(context)),
                                          builder: (dialogContext) {
                                            return Material(
                                              color: Colors.transparent,
                                              child: GestureDetector(
                                                onTap: () => _model.unfocusNode.canRequestFocus
                                                    ? FocusScope.of(context)
                                                    .requestFocus(_model.unfocusNode)
                                                    : FocusScope.of(context).unfocus(),
                                                child: const AccountUserDropdownWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: FFTheme.of(context).accent1,
                                              borderRadius: BorderRadius.circular(12),
                                              border: Border.all(
                                                color: FFTheme.of(context).primary,
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(8),
                                                child: CachedNetworkImage(
                                                  fadeInDuration: Duration(milliseconds: 500),
                                                  fadeOutDuration: Duration(milliseconds: 500),
                                                  imageUrl:
                                                  'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                                  width: 44,
                                                  height: 44,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Andrew D.',
                                                    style: FFTheme.of(context).bodyLarge,
                                                  ),
                                                  Text(
                                                    'admin@gmail.com',
                                                    style: FFTheme.of(context).labelMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 6)),
                            ),
                          ),











                          ////////////

                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 24.0,
                              decoration: const BoxDecoration(),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 0.0, 4.0),
                            child: Text(
                              'Members',
                              style:
                                  FFTheme.of(context).headlineMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Below are a list of members of your team.',
                              style: FFTheme.of(context).labelMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 0.0),
                            child: TextFormField(
                              //controller: _model.textController,
                              //focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Search all users...',
                                labelStyle:
                                    FFTheme.of(context).labelMedium,
                                hintStyle:
                                    FFTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FFTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FFTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FFTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FFTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                suffixIcon: Icon(
                                  Icons.search_rounded,
                                  color: FFTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                              style: FFTheme.of(context).bodyMedium,
                              cursorColor: FFTheme.of(context).primary,
                              //validator: _model.textControllerValidator.asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [






                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                                    child: FFChoiceChips(

                                      options: const [
                                        ChipData('All'),
                                        ChipData('Admin'),
                                        ChipData('Content Manager'),
                                        ChipData('User'),
                                        ChipData('Instructor')
                                      ],

                                      onChanged: (val) => setState(() => _model.choiceChipsValues = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor: FFTheme.of(context).primary,
                                        textStyle: FFTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FFTheme.of(context).info,
                                        ),


                                        iconColor: FFTheme.of(context).info,
                                        iconSize: 18,
                                        elevation: 2,
                                        borderColor: FFTheme.of(context).accent1,
                                        borderWidth: 1,
                                        borderRadius: BorderRadius.circular(8),
                                      ),



                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: FFTheme.of(context).alternate,
                                        textStyle: FFTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FFTheme.of(context).secondaryText,
                                        ),


                                        iconColor: FFTheme.of(context).secondaryText,
                                        iconSize: 18,
                                        elevation: 0,
                                        borderColor: FFTheme.of(context).primaryBackground,
                                        borderWidth: 1,
                                        borderRadius: BorderRadius.circular(8),
                                      ),


                                      chipSpacing: 8,
                                      rowSpacing: 12,
                                      multiselect: true,
                                      initialized: _model.choiceChipsValues != null,
                                      alignment: WrapAlignment.start,
                                      controller: _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                            ['All'],
                                     ),


                                      wrapped: true,

                                    ),

                                 ),







                                ]
                                    .addToStart(const SizedBox(width: 16.0))
                                    .addToEnd(const SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FFTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-1.00, 0.00),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Container(
                                      width: 40.0,
                                      height: 100.0,
                                      decoration: const BoxDecoration(),
                                    ),
                                  Expanded(
                                    flex: 4,
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(-1.00, 0.00),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Name',
                                          style: FFTheme.of(context)
                                              .labelSmall,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 2,
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: Text(
                                          'Last Active',
                                          style: FFTheme.of(context)
                                              .labelSmall,
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Expanded(
                                      flex: 3,
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: Text(
                                          'Role',
                                          style: FFTheme.of(context)
                                              .labelSmall,
                                        ),
                                      ),
                                    ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.00, 0.00),
                                          child: Text(
                                            'Actions',
                                            style: FFTheme.of(context)
                                                .labelSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ListView(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              44.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FFTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 0.0,
                                      color: FFTheme.of(context)
                                          .alternate,
                                      offset: const Offset(0.0, 1.0),
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 67.0,
                                        height: 72.0,
                                        decoration: BoxDecoration(
                                          color: FFTheme.of(context)
                                              .accent1,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FFTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=900&q=60',
                                              width: 127.0,
                                              height: 120.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'firstName',
                                                style:
                                                    FFTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                              Text(
                                                'lastName',
                                                style:
                                                    FFTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  'email@gmail.com',
                                                  style: FFTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FFTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  'randy@domainname.com',
                                                  style: FFTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FFTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  'randy@domainname.com',
                                                  style: FFTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FFTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
                                        Expanded(
                                          flex: 2,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              '5 mins ago',
                                              style:
                                                  FFTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                      ))
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: Text(
                                              'Admin',
                                              style:
                                                  FFTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFIconButton(
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                Icons.more_vert_sharp,
                                                color:
                                                    FFTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),

                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              FFIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 40.0,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.edit,
                                                  color: FFTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
                                                },
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              FFIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 40.0,
                                                icon: FaIcon(
                                                  FontAwesomeIcons
                                                      .graduationCap,
                                                  color: FFTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                onPressed: () {
                                                  print('IconButton pressed ...');
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 1.0)),
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
