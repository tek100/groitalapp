import '';
import '/backend/supabase/supabase.dart';
import '/components/data_input_compo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'data_collection_page_model.dart';
export 'data_collection_page_model.dart';

class DataCollectionPageWidget extends StatefulWidget {
  const DataCollectionPageWidget({
    super.key,
    required this.dataCollectionName,
  });

  final String? dataCollectionName;

  static String routeName = 'dataCollectionPage';
  static String routePath = '/dataCollectionPage';

  @override
  State<DataCollectionPageWidget> createState() =>
      _DataCollectionPageWidgetState();
}

class _DataCollectionPageWidgetState extends State<DataCollectionPageWidget> {
  late DataCollectionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataCollectionPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.metaDataTable = await TablesMetadataTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'table_name',
          widget.dataCollectionName,
        ),
      );
      _model.tableID = _model.metaDataTable?.firstOrNull?.tableId;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            valueOrDefault<String>(
              widget.dataCollectionName,
              'dataCollections',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FutureBuilder<List<ColumnsMetadataRow>>(
                  future: ColumnsMetadataTable().queryRows(
                    queryFn: (q) => q.eqOrNull(
                      'table_id',
                      _model.tableID,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<ColumnsMetadataRow> containerColumnsMetadataRowList =
                        snapshot.data!;

                    return Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final dataCollection =
                                containerColumnsMetadataRowList
                                    .map((e) => e)
                                    .toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: dataCollection.length,
                              itemBuilder: (context, dataCollectionIndex) {
                                final dataCollectionItem =
                                    dataCollection[dataCollectionIndex];
                                return DataInputCompoWidget(
                                  key: Key(
                                      'Keymvz_${dataCollectionIndex}_of_${dataCollection.length}'),
                                  labelText: dataCollectionItem.columnName!,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
