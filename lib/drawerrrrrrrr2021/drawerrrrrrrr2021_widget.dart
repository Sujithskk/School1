import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'drawerrrrrrrr2021_model.dart';
export 'drawerrrrrrrr2021_model.dart';

class Drawerrrrrrrr2021Widget extends StatefulWidget {
  const Drawerrrrrrrr2021Widget({super.key});

  @override
  State<Drawerrrrrrrr2021Widget> createState() =>
      _Drawerrrrrrrr2021WidgetState();
}

class _Drawerrrrrrrr2021WidgetState extends State<Drawerrrrrrrr2021Widget> {
  late Drawerrrrrrrr2021Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Drawerrrrrrrr2021Model());
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

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 0.0, 0.0),
                      child: Container(
                        width: 234.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/logo-small_1.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '9jgdel1g' /* Academic Session: 2023 - 2024 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 1202.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFB80900),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ListTile(
                            leading: const Icon(
                              Icons.dashboard_sharp,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'lyi3pgnk' /* Dashboard */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'hb3qfsga' /* Profile */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.chalkboardTeacher,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                've9hqs4l' /* Teachers */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.table_view,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                '2wimqo1m' /* Time Table */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.home_work_rounded,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'nkfs7hg7' /* Homeworks */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.event_sharp,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'rvqoozvs' /* Events */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.menu_book,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'gsuvs11v' /* Academic Subjects */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.history_edu_rounded,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'rii7uzzz' /* Fees History */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.directions_bus,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                '7qwur7j1' /* Bus Information */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.title,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'jc43wvcs' /* Write To School */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.notifications_sharp,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'n3rddy98' /* Notifications / Alerts */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: ListTile(
                              leading: const Icon(
                                Icons.settings_sharp,
                                color: Colors.white,
                                size: 20.0,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'zc87i52c' /* Settings */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                            ),
                          ),
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '45mxh9ln' /* LOGOUT */,
                                  ),
                                  icon: const Icon(
                                    Icons.logout_outlined,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 280.0,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFFB80900),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
