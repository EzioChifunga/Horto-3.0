import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'detail_plant_vertical_model.dart';
export 'detail_plant_vertical_model.dart';

class DetailPlantVerticalWidget extends StatefulWidget {
  const DetailPlantVerticalWidget({
    super.key,
    this.detailTitle,
    this.detailBody,
    this.image,
  });

  final String? detailTitle;
  final String? detailBody;
  final String? image;

  @override
  State<DetailPlantVerticalWidget> createState() =>
      _DetailPlantVerticalWidgetState();
}

class _DetailPlantVerticalWidgetState extends State<DetailPlantVerticalWidget> {
  late DetailPlantVerticalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailPlantVerticalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).darkGreen,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.detailTitle,
                          'Titulo',
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).white,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.detailBody,
                        'Detalhe',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).white,
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.image!,
                width: double.infinity,
                height: 128.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
