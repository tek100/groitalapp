import '';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/disabled_task_card_widget.dart';
import '/components/task_card_widget.dart';
import '/components/task_link_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userData = await EmployeeTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          currentUserUid,
        ),
      );
      FFAppState().isExpanded = false;
      FFAppState().temID = -1;
      FFAppState().departmentID = _model.userData!.firstOrNull!.department!;
      FFAppState().userName = _model.userData!.firstOrNull!.name!;
      safeSetState(() {});
      await actions.initializeOneSignalReceiver();
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
          child: RefreshIndicator(
            onRefresh: () async {
              safeSetState(() {
                FFAppState().clearTaskCacheCache();
                _model.requestCompleted = false;
              });
              await _model.waitForRequestCompleted();
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  functions
                                      .greetingFunction(getCurrentTimestamp),
                                  'Hello',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                FFAppState().userName,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderRadius: 100.0,
                              borderWidth: 2.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'GROITAL',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 32.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Food Safety Journal',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF8F9FB),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/GROITAL.webp',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                    ),
                  ),
                  if (FFAppState().departmentID != '')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FutureBuilder<List<TaskRow>>(
                        future: FFAppState()
                            .taskCache(
                          requestFn: () => TaskTable().queryRows(
                            queryFn: (q) => q
                                .eqOrNull(
                                  'department_id',
                                  FFAppState().departmentID,
                                )
                                .eqOrNull(
                                  'active',
                                  true,
                                ),
                          ),
                        )
                            .then((result) {
                          _model.requestCompleted = true;
                          return result;
                        }),
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
                          List<TaskRow> containerTaskRowList = snapshot.data!;

                          return Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Today\'s activities',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 28.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 80.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final pendingTasks = containerTaskRowList
                                          .where((e) =>
                                              (e.status != 'completed') &&
                                              (e.skippable == false))
                                          .toList()
                                          .map((e) => e)
                                          .toList();

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: pendingTasks.length,
                                        itemBuilder:
                                            (context, pendingTasksIndex) {
                                          final pendingTasksItem =
                                              pendingTasks[pendingTasksIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              TaskCardWidget(
                                                key: Key(
                                                    'Keyr6u_${pendingTasksIndex}_of_${pendingTasks.length}'),
                                                taskName:
                                                    pendingTasksItem.taskName,
                                                taskId: pendingTasksItem.taskId,
                                                taskStatus:
                                                    pendingTasksItem.status,
                                                taskCurrent: pendingTasksIndex,
                                                taskColor: Color(0xFFD48260),
                                                taskType:
                                                    pendingTasksItem.taskType,
                                                taskSkippable:
                                                    pendingTasksItem.skippable!,
                                                action007: () async {
                                                  await TaskTable().update(
                                                    data: {
                                                      'status': 'completed',
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'task_id',
                                                      pendingTasksItem.taskId,
                                                    ),
                                                  );
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 1000));
                                                  FFAppState().isCompleted =
                                                      'completed';
                                                  safeSetState(() {});
                                                  FFAppState().temID = -1;
                                                  safeSetState(() {});
                                                },
                                                skipTaskAction: () async {
                                                  await TaskTable().update(
                                                    data: {
                                                      'deleted_at':
                                                          supaSerialize<
                                                              DateTime>(null),
                                                      'skippable': true,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'task_id',
                                                      pendingTasksItem.taskId,
                                                    ),
                                                  );
                                                  FFAppState().render =
                                                      !(FFAppState().render ??
                                                          true);
                                                  FFAppState().temID = -1;
                                                  FFAppState().isExpanded =
                                                      false;
                                                  safeSetState(() {});
                                                },
                                              ),
                                              TaskLinkCardWidget(
                                                key: Key(
                                                    'Keya0m_${pendingTasksIndex}_of_${pendingTasks.length}'),
                                                taskName:
                                                    pendingTasksItem.taskName,
                                                taskId: pendingTasksItem.taskId,
                                                taskStatus:
                                                    pendingTasksItem.status,
                                                taskCurrent: pendingTasksIndex,
                                                taskColor: Color(0xFFD48260),
                                                taskType:
                                                    pendingTasksItem.taskType,
                                                navigateAction: () async {
                                                  if (pendingTasksItem
                                                          .taskType ==
                                                      'checklist') {
                                                    context.pushNamed(
                                                      TasksPageWidget.routeName,
                                                      queryParameters: {
                                                        'taskId':
                                                            serializeParam(
                                                          pendingTasksItem
                                                              .taskId,
                                                          ParamType.String,
                                                        ),
                                                        'currentTaskId':
                                                            serializeParam(
                                                          pendingTasksIndex,
                                                          ParamType.int,
                                                        ),
                                                        'taskType':
                                                            serializeParam(
                                                          pendingTasksItem
                                                              .taskType,
                                                          ParamType.String,
                                                        ),
                                                        'taskName':
                                                            serializeParam(
                                                          pendingTasksItem
                                                              .taskName,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    context.pushNamed(
                                                      DataCollectionPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'dataCollectionName':
                                                            serializeParam(
                                                          pendingTasksItem
                                                              .taskName,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'dataPage',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (containerTaskRowList
                                            .where(
                                                (e) => e.status == 'completed')
                                            .toList()
                                            .length >
                                        0)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 20.0),
                                        child: Text(
                                          'Completed Tasks',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final completedTasks =
                                          containerTaskRowList
                                              .where((e) =>
                                                  e.status == 'completed')
                                              .toList();

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: completedTasks.length,
                                        itemBuilder:
                                            (context, completedTasksIndex) {
                                          final completedTasksItem =
                                              completedTasks[
                                                  completedTasksIndex];
                                          return DisabledTaskCardWidget(
                                            key: Key(
                                                'Keyhpm_${completedTasksIndex}_of_${completedTasks.length}'),
                                            taskName:
                                                completedTasksItem.taskName,
                                            taskId: completedTasksItem.taskId,
                                            taskStatus:
                                                completedTasksItem.status,
                                            taskCurrent: completedTasksIndex,
                                            taskColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            taskType: completedTasksItem
                                                .skippable
                                                ?.toString(),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (containerTaskRowList
                                            .where((e) => e.skippable == true)
                                            .toList()
                                            .length >
                                        0)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 20.0),
                                        child: Text(
                                          'Skipped Tasks',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final skippedTasks = containerTaskRowList
                                          .where((e) => e.skippable == true)
                                          .toList();

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: skippedTasks.length,
                                        itemBuilder:
                                            (context, skippedTasksIndex) {
                                          final skippedTasksItem =
                                              skippedTasks[skippedTasksIndex];
                                          return DisabledTaskCardWidget(
                                            key: Key(
                                                'Keyx4p_${skippedTasksIndex}_of_${skippedTasks.length}'),
                                            taskName: skippedTasksItem.taskName,
                                            taskId: skippedTasksItem.taskId,
                                            taskStatus: skippedTasksItem.status,
                                            taskCurrent: skippedTasksIndex,
                                            taskColor: Color(0xFFEEC44E),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
