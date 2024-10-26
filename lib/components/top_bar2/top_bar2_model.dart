import '/components/top_button/top_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_bar2_widget.dart' show TopBar2Widget;
import 'package:flutter/material.dart';

class TopBar2Model extends FlutterFlowModel<TopBar2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TopButton component.
  late TopButtonModel topButtonModel1;
  // Model for TopButton component.
  late TopButtonModel topButtonModel2;

  @override
  void initState(BuildContext context) {
    topButtonModel1 = createModel(context, () => TopButtonModel());
    topButtonModel2 = createModel(context, () => TopButtonModel());
  }

  @override
  void dispose() {
    topButtonModel1.dispose();
    topButtonModel2.dispose();
  }
}
