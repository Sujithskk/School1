import '/components/drawer2022_widget.dart';
import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testttt12_widget.dart' show Testttt12Widget;
import 'package:flutter/material.dart';

class Testttt12Model extends FlutterFlowModel<Testttt12Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawer2022 component.
  late Drawer2022Model drawer2022Model;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    drawer2022Model = createModel(context, () => Drawer2022Model());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawer2022Model.dispose();
    navBar1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
