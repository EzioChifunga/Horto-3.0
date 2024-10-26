import '/components/top_bar2/top_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopBar2 component.
  late TopBar2Model topBar2Model;
  // State field(s) for createdName widget.
  FocusNode? createdNameFocusNode;
  TextEditingController? createdNameTextController;
  String? Function(BuildContext, String?)? createdNameTextControllerValidator;
  // State field(s) for createdEmail widget.
  FocusNode? createdEmailFocusNode;
  TextEditingController? createdEmailTextController;
  String? Function(BuildContext, String?)? createdEmailTextControllerValidator;
  // State field(s) for createdPassword widget.
  FocusNode? createdPasswordFocusNode;
  TextEditingController? createdPasswordTextController;
  late bool createdPasswordVisibility;
  String? Function(BuildContext, String?)?
      createdPasswordTextControllerValidator;
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    topBar2Model = createModel(context, () => TopBar2Model());
    createdPasswordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    topBar2Model.dispose();
    createdNameFocusNode?.dispose();
    createdNameTextController?.dispose();

    createdEmailFocusNode?.dispose();
    createdEmailTextController?.dispose();

    createdPasswordFocusNode?.dispose();
    createdPasswordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
