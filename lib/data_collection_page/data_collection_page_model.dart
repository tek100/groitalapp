import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'data_collection_page_widget.dart' show DataCollectionPageWidget;
import 'package:flutter/material.dart';

class DataCollectionPageModel
    extends FlutterFlowModel<DataCollectionPageWidget> {
  ///  Local state fields for this page.

  String? tableID;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in dataCollectionPage widget.
  List<TablesMetadataRow>? metaDataTable;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
