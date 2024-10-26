import '/backend/backend.dart';
import '/components/top_bar2/top_bar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'qr_code_reader_model.dart';
export 'qr_code_reader_model.dart';

class QrCodeReaderWidget extends StatefulWidget {
  const QrCodeReaderWidget({super.key});

  @override
  State<QrCodeReaderWidget> createState() => _QrCodeReaderWidgetState();
}

class _QrCodeReaderWidgetState extends State<QrCodeReaderWidget> {
  late QrCodeReaderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrCodeReaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).lightGreen2,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: wrapWithModel(
                      model: _model.topBar2Model,
                      updateCallback: () => safeSetState(() {}),
                      child: TopBar2Widget(
                        circleColor: FlutterFlowTheme.of(context).darkGreen,
                        rightIcon: FaIcon(
                          FontAwesomeIcons.questionCircle,
                          color: FlutterFlowTheme.of(context).lightGreen2,
                          size: 28.0,
                        ),
                        leftIcon: Icon(
                          Icons.arrow_back_rounded,
                          color: FlutterFlowTheme.of(context).lightGreen2,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Escaneie o Qr Code',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).darkGreen,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w800,
                              ),
                        ),
                        Text(
                          'Clique no botão abaixo e posicione a câmera em frente ao QR Code da espécie',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).darkGreen,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 30.0),
                          child: Container(
                            width: 230.0,
                            height: 227.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8FDF3),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/MolduraQrCode.png',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/output-onlinegiftools_(3).gif',
                                  width: 173.0,
                                  height: 158.0,
                                  fit: BoxFit.contain,
                                  alignment: const Alignment(0.0, 0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StreamBuilder<List<PlantsProfileRecord>>(
                          stream: queryPlantsProfileRecord(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<PlantsProfileRecord>
                                containerPlantsProfileRecordList =
                                snapshot.data!;

                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.qrCodeTextButton =
                                    await FlutterBarcodeScanner.scanBarcode(
                                  '#C62828', // scanning line color
                                  'Cancelar', // cancel button text
                                  true, // whether to show the flash icon
                                  ScanMode.QR,
                                );

                                if (functions.searchPlant(
                                        containerPlantsProfileRecordList
                                            .toList(),
                                        _model.qrCodeTextButton) ==
                                    true) {
                                  context.pushNamed(
                                    'PlantProfile',
                                    queryParameters: {
                                      'plant': serializeParam(
                                        functions.foundedPlant(
                                            containerPlantsProfileRecordList
                                                .toList(),
                                            _model.qrCodeTextButton),
                                        ParamType.Document,
                                      ),
                                      'love': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'plant': functions.foundedPlant(
                                          containerPlantsProfileRecordList
                                              .toList(),
                                          _model.qrCodeTextButton),
                                    },
                                  );
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Espécie não encontrada!'),
                                        content: const Text(
                                            'Limpe sua camera e confira se está lendo o código correto. Caso o problema permaneça entre em contato conosco!'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                safeSetState(() {});
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).darkGreen,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.qr_code_2_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .lightGreen2,
                                      size: 27.0,
                                    ),
                                    Text(
                                      'Abrir Leitor de Qr Code',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .lightGreen2,
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            );
                          },
                        ),
                      ].divide(const SizedBox(height: 15.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
