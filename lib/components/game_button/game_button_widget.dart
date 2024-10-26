import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'game_button_model.dart';
export 'game_button_model.dart';

class GameButtonWidget extends StatefulWidget {
  const GameButtonWidget({super.key});

  @override
  State<GameButtonWidget> createState() => _GameButtonWidgetState();
}

class _GameButtonWidgetState extends State<GameButtonWidget> {
  late GameButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameButtonModel());

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
      width: 105.0,
      height: 105.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).darkGreen,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 93.0,
            height: 93.0,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              '',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
