import '/components/top_bar2/top_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_plant_step2_widget.dart' show EditPlantStep2Widget;
import 'package:flutter/material.dart';

class EditPlantStep2Model extends FlutterFlowModel<EditPlantStep2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopBar2 component.
  late TopBar2Model topBar2Model;
  // State field(s) for titleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  // State field(s) for bodyTextField widget.
  FocusNode? bodyTextFieldFocusNode;
  TextEditingController? bodyTextFieldTextController;
  String? Function(BuildContext, String?)? bodyTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    topBar2Model = createModel(context, () => TopBar2Model());
  }

  @override
  void dispose() {
    topBar2Model.dispose();
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    bodyTextFieldFocusNode?.dispose();
    bodyTextFieldTextController?.dispose();
  }
}
