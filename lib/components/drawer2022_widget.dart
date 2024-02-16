import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'drawer2022_model.dart';
export 'drawer2022_model.dart';

class Drawer2022Widget extends StatefulWidget {
  const Drawer2022Widget({super.key});

  @override
  State<Drawer2022Widget> createState() => _Drawer2022WidgetState();
}

class _Drawer2022WidgetState extends State<Drawer2022Widget> {
  late Drawer2022Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Drawer2022Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 0.0, 0.0),
                child: Container(
                  width: 234.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
                padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'u3v1fiv1' /* Academic Session: 2023 - 2024 */,
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
                          'plr2i9z2' /* Dashboard */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          'ahr9bhfq' /* Profile */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          'a0fzmfag' /* Teachers */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          'dauniiba' /* Time Table */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          '0xrbmjjy' /* Homeworks */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          '4o69f48y' /* Events */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          'mnbbitbn' /* Academic Subjects */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          'r2w6dki3' /* Fees History */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          '0u3vdku7' /* Bus Information */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          'mas59a3i' /* Write To School */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
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
                          'v679q5aw' /* Notifications / Alerts */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.settings_sharp,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '4id3mfcf' /* Settings */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                        ),
                        tileColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        dense: false,
                        contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                              'zsrp7ryi' /* LOGOUT */,
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
    );
  }
}
