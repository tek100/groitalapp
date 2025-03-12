import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'report_page_widget.dart' show ReportPageWidget;
import 'package:flutter/material.dart';

class ReportPageModel extends FlutterFlowModel<ReportPageWidget> {
  ///  Local state fields for this page.

  List<String> severity = ['High', 'Medium', 'Low'];
  void addToSeverity(String item) => severity.add(item);
  void removeFromSeverity(String item) => severity.remove(item);
  void removeAtIndexFromSeverity(int index) => severity.removeAt(index);
  void insertAtIndexInSeverity(int index, String item) =>
      severity.insert(index, item);
  void updateSeverityAtIndex(int index, Function(String) updateFn) =>
      severity[index] = updateFn(severity[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? isValid;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  IncidentsRow? reportInputs;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
