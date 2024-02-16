import '/components/drawer2022_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testttt12_widget.dart' show Testttt12Widget;
import 'package:flutter/material.dart';

class Testttt12Model extends FlutterFlowModel<Testttt12Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawer2022 component.
  late Drawer2022Model drawer2022Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    drawer2022Model = createModel(context, () => Drawer2022Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawer2022Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
