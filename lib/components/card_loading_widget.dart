import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'card_loading_model.dart';
export 'card_loading_model.dart';

class CardLoadingWidget extends StatefulWidget {
  const CardLoadingWidget({super.key});

  @override
  State<CardLoadingWidget> createState() => _CardLoadingWidgetState();
}

class _CardLoadingWidgetState extends State<CardLoadingWidget>
    with TickerProviderStateMixin {
  late CardLoadingModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardLoadingModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0xA9727272),
            angle: 0.524,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          constraints: BoxConstraints(
            minHeight: 70.0,
          ),
          decoration: BoxDecoration(
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
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Color(0xAA494949),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Color(0xAABABABA),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Color(0xAABABABA),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
