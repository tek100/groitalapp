import '/flutter_flow/flutter_flow_util.dart';
import 'customerlist_widget.dart' show CustomerlistWidget;
import 'package:flutter/material.dart';

class CustomerlistModel extends FlutterFlowModel<CustomerlistWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;
  // State field(s) for valueInput widget.
  FocusNode? valueInputFocusNode;
  TextEditingController? valueInputTextController;
  String? Function(BuildContext, String?)? valueInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    valueInputFocusNode?.dispose();
    valueInputTextController?.dispose();
  }
}
