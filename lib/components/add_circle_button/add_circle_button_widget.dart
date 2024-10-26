import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'add_circle_button_model.dart';
export 'add_circle_button_model.dart';

class AddCircleButtonWidget extends StatefulWidget {
  const AddCircleButtonWidget({super.key});

  @override
  State<AddCircleButtonWidget> createState() => _AddCircleButtonWidgetState();
}

class _AddCircleButtonWidgetState extends State<AddCircleButtonWidget> {
  late AddCircleButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddCircleButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).darkGreen,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).lightGreen2,
            size: 24.0,
          ),
        ],
      ),
    );
  }
}
