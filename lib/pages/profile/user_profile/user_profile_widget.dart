import '/auth/firebase_auth/auth_util.dart';
import '/components/activity_user_box_widget.dart';
import '/components/article_banner_widget.dart';
import '/components/home_banner_widget.dart';
import '/components/top_button/top_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lightGreen2,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: wrapWithModel(
                            model: _model.topButtonModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: TopButtonWidget(
                              circleColor:
                                  FlutterFlowTheme.of(context).darkGreen,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).lightGreen2,
                                size: 35.0,
                              ),
                              rightButton: () async {},
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Function() navigate = () {};
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Deseja sair da su conta?'),
                                      content: const Text(
                                          'Ao sair e sua conta será preciso preencher seus dados de login novamente para sair.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: const Text('Não'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: const Text('Sim'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signOut();
                              GoRouter.of(context).clearRedirectLocation();

                              navigate = () => context.goNamedAuth(
                                  'StartPage', context.mounted);
                            }

                            navigate();
                          },
                          child: wrapWithModel(
                            model: _model.topButtonModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: TopButtonWidget(
                              circleColor:
                                  FlutterFlowTheme.of(context).darkGreen,
                              icon: Icon(
                                Icons.output_sharp,
                                color: FlutterFlowTheme.of(context).lightGreen2,
                                size: 28.0,
                              ),
                              rightButton: () async {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                            border: Border.all(
                              color: const Color(0xF62A6435),
                              width: 5.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 120.0,
                              height: 120.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/User.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        AuthUserStreamWidget(
                          builder: (context) => Text(
                            valueOrDefault(currentUserDocument?.name, ''),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).darkGreen,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 15.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/LeafIcon2.svg',
                                      height: 30.0,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault<String>(
                                      () {
                                        if (valueOrDefault(
                                                currentUserDocument?.type, 0) ==
                                            0) {
                                          return 'Administrdor';
                                        } else if (valueOrDefault(
                                                currentUserDocument?.type, 0) ==
                                            1) {
                                          return 'Gestor de Espécies';
                                        } else if (valueOrDefault(
                                                currentUserDocument?.type, 0) ==
                                            2) {
                                          return 'Gerente de Conteúdos';
                                        } else {
                                          return 'Explorador';
                                        }
                                      }(),
                                      'Classe',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .lightGreen2,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => wrapWithModel(
                                model: _model.activityUserBoxModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ActivityUserBoxWidget(
                                  number: (currentUserDocument?.lovedPlants
                                              .toList() ??
                                          [])
                                      .length
                                      .toString(),
                                  title: 'Plantas\nCurtidas',
                                ),
                              ),
                            ),
                            if (valueOrDefault(currentUserDocument?.type, 0)
                                    .toString() ==
                                '1')
                              AuthUserStreamWidget(
                                builder: (context) => wrapWithModel(
                                  model: _model.activityUserBoxModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const ActivityUserBoxWidget(
                                    number: '0',
                                    title: 'Espécies Registradas',
                                  ),
                                ),
                              ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lightGreen3,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.homeBannerModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: HomeBannerWidget(
                                titulo: 'Plantas Curtidas',
                                texto:
                                    'Confira as plantas que você favoritou de forma mais rápida.',
                                primaryColor:
                                    FlutterFlowTheme.of(context).darkGreen2,
                                seccondaryColor:
                                    FlutterFlowTheme.of(context).lightGreen2,
                                callText: 'Ver Plantas',
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://projetofaperjufrj.wixsite.com/bot-nica-inclusiva-u/jardim-sensorial');
                              },
                              child: wrapWithModel(
                                model: _model.homeBannerModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBannerWidget(
                                  titulo: 'Descubra o Jardim Sensorial',
                                  texto:
                                      'Interaja com nosso jardim sensorial e descubra todas as espécies que temos',
                                  primaryColor: const Color(0xF62A6435),
                                  seccondaryColor:
                                      FlutterFlowTheme.of(context).lightGreen2,
                                  callText: 'Descobrir',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Confira alguns conteúdos',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .darkGreen,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: FlutterFlowTheme.of(context).darkGreen,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://www.scielo.br/j/ea/a/fchzvBKgNvHRqZJbvK7CCHc/');
                                  },
                                  child: wrapWithModel(
                                    model: _model.articleBannerModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ArticleBannerWidget(
                                      title:
                                          'Ensino de Botânica: conhecimento e encantamento na educação científica',
                                      author: 'Profª Sandra Cordeiro',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://smastr16.blob.core.windows.net/pgibt/sites/242/2023/10/adaptacoes_estruturais_das_plantas_ao_ambiente_elisa_aoyama.pdf');
                                  },
                                  child: wrapWithModel(
                                    model: _model.articleBannerModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ArticleBannerWidget(
                                      title:
                                          'Adaptações de plantas às variações ambientais: estratégias e implicações ecológicas no contexto nacional',
                                      author: 'Por: Dr.Francisco Souza',
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.articleBannerModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const ArticleBannerWidget(
                                    title:
                                        'Mas de que te serve saber botânica?',
                                    author: 'Dr. Palmer Fjorn',
                                  ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (valueOrDefault(currentUserDocument?.type, 0) == 1)
                      AuthUserStreamWidget(
                        builder: (context) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('PlantManagement');
                              },
                              text: 'Gerenciar Espècies',
                              options: FFButtonOptions(
                                width: 212.0,
                                height: 48.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).darkGreen,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('CreatePlantStep1');
                              },
                              text: 'Adicionar Espécie',
                              options: FFButtonOptions(
                                width: 212.0,
                                height: 48.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).darkGreen,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ].divide(const SizedBox(height: 20.0)),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
