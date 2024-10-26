import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'top_button_model.dart';
export 'top_button_model.dart';

class TopButtonWidget extends StatefulWidget {
  const TopButtonWidget({
    super.key,
    Color? circleColor,
    this.icon,
    required this.rightButton,
  }) : circleColor = circleColor ?? const Color(0xFFCBD3C1);

  final Color circleColor;
  final Widget? icon;
  final Future Function()? rightButton;

  @override
  State<TopButtonWidget> createState() => _TopButtonWidgetState();
}

class _TopButtonWidgetState extends State<TopButtonWidget> {
  late TopButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopButtonModel());

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
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: widget.circleColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: widget.icon!,
      ),
    );
  }
}
