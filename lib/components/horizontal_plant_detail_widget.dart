import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'horizontal_plant_detail_model.dart';
export 'horizontal_plant_detail_model.dart';

class HorizontalPlantDetailWidget extends StatefulWidget {
  const HorizontalPlantDetailWidget({
    super.key,
    this.title,
    this.bodyText,
    this.image,
  });

  final String? title;
  final String? bodyText;
  final String? image;

  @override
  State<HorizontalPlantDetailWidget> createState() =>
      _HorizontalPlantDetailWidgetState();
}

class _HorizontalPlantDetailWidgetState
    extends State<HorizontalPlantDetailWidget> {
  late HorizontalPlantDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HorizontalPlantDetailModel());

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
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 205.0,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.title,
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
                      widget.bodyText,
                      'Corpo de Texto',
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
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: FlutterFlowExpandedImageView(
                      image: Image.network(
                        widget.image!,
                        fit: BoxFit.contain,
                      ),
                      allowRotation: false,
                      tag: widget.image!,
                      useHeroAnimation: true,
                    ),
                  ),
                );
              },
              child: Hero(
                tag: widget.image!,
                transitionOnUserGestures: true,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    widget.image!,
                    width: 110.0,
                    height: 184.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
