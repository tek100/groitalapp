import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'check_list_card_widget.dart' show CheckListCardWidget;
import 'package:flutter/material.dart';

class CheckListCardModel extends FlutterFlowModel<CheckListCardWidget> {
  ///  Local state fields for this component.

  bool isSkipped = false;

  String isCompleted = 'pending';

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  Map<SubtaskRow, bool> checkboxValueMap2 = {};
  List<SubtaskRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
