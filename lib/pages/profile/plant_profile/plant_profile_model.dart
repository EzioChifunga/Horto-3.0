import '/components/top_bar2/top_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'plant_profile_widget.dart' show PlantProfileWidget;
import 'package:flutter/material.dart';

class PlantProfileModel extends FlutterFlowModel<PlantProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopBar2 component.
  late TopBar2Model topBar2Model;

  @override
  void initState(BuildContext context) {
    topBar2Model = createModel(context, () => TopBar2Model());
  }

  @override
  void dispose() {
    topBar2Model.dispose();
  }
}
