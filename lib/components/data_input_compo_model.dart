import '/flutter_flow/flutter_flow_util.dart';
import 'data_input_compo_widget.dart' show DataInputCompoWidget;
import 'package:flutter/material.dart';

class DataInputCompoModel extends FlutterFlowModel<DataInputCompoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
