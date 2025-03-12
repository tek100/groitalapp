import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'task_link_card_model.dart';
export 'task_link_card_model.dart';

class TaskLinkCardWidget extends StatefulWidget {
  const TaskLinkCardWidget({
    super.key,
    this.taskName,
    this.taskId,
    this.taskStatus,
    required this.taskCurrent,
    Color? taskColor,
    this.taskType,
    required this.navigateAction,
  }) : this.taskColor = taskColor ?? const Color(0xE1E7E7E7);

  final String? taskName;
  final String? taskId;
  final String? taskStatus;
  final int? taskCurrent;
  final Color taskColor;
  final String? taskType;
  final Future Function()? navigateAction;

  @override
  State<TaskLinkCardWidget> createState() => _TaskLinkCardWidgetState();
}

class _TaskLinkCardWidgetState extends State<TaskLinkCardWidget> {
  late TaskLinkCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskLinkCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.taskType != 'general',
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await widget.navigateAction?.call();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              constraints: BoxConstraints(
                minHeight: 70.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Color(0x3416202A),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 8.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: widget.taskColor,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.taskName,
                                'taskName',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                      ],
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
