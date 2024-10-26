import '/components/home_banner_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomeBanner component.
  late HomeBannerModel homeBannerModel1;
  // Model for HomeBanner component.
  late HomeBannerModel homeBannerModel2;
  // Stores action output result for [Custom Action - searchPlantByName] action in FloatingActionButton widget.
  String? nomeCientificoPesquisado;

  @override
  void initState(BuildContext context) {
    homeBannerModel1 = createModel(context, () => HomeBannerModel());
    homeBannerModel2 = createModel(context, () => HomeBannerModel());
  }

  @override
  void dispose() {
    homeBannerModel1.dispose();
    homeBannerModel2.dispose();
  }
}
