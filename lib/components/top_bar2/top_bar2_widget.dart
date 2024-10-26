import '/components/top_button/top_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'top_bar2_model.dart';
export 'top_bar2_model.dart';

class TopBar2Widget extends StatefulWidget {
  const TopBar2Widget({
    super.key,
    this.circleColor,
    this.rightIcon,
    this.leftIcon,
  });

  final Color? circleColor;
  final Widget? rightIcon;
  final Widget? leftIcon;

  @override
  State<TopBar2Widget> createState() => _TopBar2WidgetState();
}

class _TopBar2WidgetState extends State<TopBar2Widget> {
  late TopBar2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopBar2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.safePop();
          },
          child: wrapWithModel(
            model: _model.topButtonModel1,
            updateCallback: () => safeSetState(() {}),
            child: TopButtonWidget(
              circleColor: widget.circleColor,
              icon: widget.leftIcon,
              rightButton: () async {},
            ),
          ),
        ),
        wrapWithModel(
          model: _model.topButtonModel2,
          updateCallback: () => safeSetState(() {}),
          child: TopButtonWidget(
            circleColor: widget.circleColor,
            icon: widget.rightIcon,
            rightButton: () async {},
          ),
        ),
      ],
    );
  }
}
