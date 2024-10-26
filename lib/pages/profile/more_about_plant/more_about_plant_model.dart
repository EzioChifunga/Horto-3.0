import '/components/horizontal_plant_detail_widget.dart';
import '/components/top_bar2/top_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'more_about_plant_widget.dart' show MoreAboutPlantWidget;
import 'package:flutter/material.dart';

class MoreAboutPlantModel extends FlutterFlowModel<MoreAboutPlantWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopBar2 component.
  late TopBar2Model topBar2Model;
  // Model for HorizontalPlantDetail component.
  late HorizontalPlantDetailModel horizontalPlantDetailModel;

  @override
  void initState(BuildContext context) {
    topBar2Model = createModel(context, () => TopBar2Model());
    horizontalPlantDetailModel =
        createModel(context, () => HorizontalPlantDetailModel());
  }

  @override
  void dispose() {
    topBar2Model.dispose();
    horizontalPlantDetailModel.dispose();
  }
}
