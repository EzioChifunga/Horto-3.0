import '/components/top_bar2/top_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_plant_step3_widget.dart' show CreatePlantStep3Widget;
import 'package:flutter/material.dart';

class CreatePlantStep3Model extends FlutterFlowModel<CreatePlantStep3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopBar2 component.
  late TopBar2Model topBar2Model;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

  @override
  void initState(BuildContext context) {
    topBar2Model = createModel(context, () => TopBar2Model());
  }

  @override
  void dispose() {
    topBar2Model.dispose();
  }
}
