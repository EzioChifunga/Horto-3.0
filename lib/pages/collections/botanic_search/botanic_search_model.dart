import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'botanic_search_widget.dart' show BotanicSearchWidget;
import 'package:flutter/material.dart';

class BotanicSearchModel extends FlutterFlowModel<BotanicSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  final searchBarKey = GlobalKey();
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? searchBarSelectedOption;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  List<PlantsProfileRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
  }
}
