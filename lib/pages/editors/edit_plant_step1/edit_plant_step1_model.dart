import '/components/add_circle_button/add_circle_button_widget.dart';
import '/components/top_button/top_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_plant_step1_widget.dart' show EditPlantStep1Widget;
import 'package:flutter/material.dart';

class EditPlantStep1Model extends FlutterFlowModel<EditPlantStep1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopButton component.
  late TopButtonModel topButtonModel1;
  // Model for TopButton component.
  late TopButtonModel topButtonModel2;
  // State field(s) for nomePlantaTextField widget.
  FocusNode? nomePlantaTextFieldFocusNode;
  TextEditingController? nomePlantaTextFieldTextController;
  String? Function(BuildContext, String?)?
      nomePlantaTextFieldTextControllerValidator;
  // State field(s) for nomeCientificoTextField widget.
  FocusNode? nomeCientificoTextFieldFocusNode;
  TextEditingController? nomeCientificoTextFieldTextController;
  String? Function(BuildContext, String?)?
      nomeCientificoTextFieldTextControllerValidator;
  // State field(s) for popNamesTextField widget.
  FocusNode? popNamesTextFieldFocusNode;
  TextEditingController? popNamesTextFieldTextController;
  String? Function(BuildContext, String?)?
      popNamesTextFieldTextControllerValidator;
  // Model for AddCircleButton component.
  late AddCircleButtonModel addCircleButtonModel1;
  // State field(s) for familyTextField widget.
  FocusNode? familyTextFieldFocusNode;
  TextEditingController? familyTextFieldTextController;
  String? Function(BuildContext, String?)?
      familyTextFieldTextControllerValidator;
  // State field(s) for originsTextField widget.
  FocusNode? originsTextFieldFocusNode;
  TextEditingController? originsTextFieldTextController;
  String? Function(BuildContext, String?)?
      originsTextFieldTextControllerValidator;
  // Model for AddCircleButton component.
  late AddCircleButtonModel addCircleButtonModel2;
  // State field(s) for usedlPartTextField widget.
  FocusNode? usedlPartTextFieldFocusNode;
  TextEditingController? usedlPartTextFieldTextController;
  String? Function(BuildContext, String?)?
      usedlPartTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    topButtonModel1 = createModel(context, () => TopButtonModel());
    topButtonModel2 = createModel(context, () => TopButtonModel());
    addCircleButtonModel1 = createModel(context, () => AddCircleButtonModel());
    addCircleButtonModel2 = createModel(context, () => AddCircleButtonModel());
  }

  @override
  void dispose() {
    topButtonModel1.dispose();
    topButtonModel2.dispose();
    nomePlantaTextFieldFocusNode?.dispose();
    nomePlantaTextFieldTextController?.dispose();

    nomeCientificoTextFieldFocusNode?.dispose();
    nomeCientificoTextFieldTextController?.dispose();

    popNamesTextFieldFocusNode?.dispose();
    popNamesTextFieldTextController?.dispose();

    addCircleButtonModel1.dispose();
    familyTextFieldFocusNode?.dispose();
    familyTextFieldTextController?.dispose();

    originsTextFieldFocusNode?.dispose();
    originsTextFieldTextController?.dispose();

    addCircleButtonModel2.dispose();
    usedlPartTextFieldFocusNode?.dispose();
    usedlPartTextFieldTextController?.dispose();
  }
}
