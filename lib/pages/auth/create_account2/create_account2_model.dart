import '/components/top_bar2/top_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_account2_widget.dart' show CreateAccount2Widget;
import 'package:flutter/material.dart';

class CreateAccount2Model extends FlutterFlowModel<CreateAccount2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopBar2 component.
  late TopBar2Model topBar2Model;
  // State field(s) for registerCode widget.
  FocusNode? registerCodeFocusNode;
  TextEditingController? registerCodeTextController;
  String? Function(BuildContext, String?)? registerCodeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    topBar2Model = createModel(context, () => TopBar2Model());
  }

  @override
  void dispose() {
    topBar2Model.dispose();
    registerCodeFocusNode?.dispose();
    registerCodeTextController?.dispose();
  }
}
