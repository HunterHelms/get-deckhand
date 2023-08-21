import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_hiring_v2_model.dart';
export 'home_hiring_v2_model.dart';

class HomeHiringV2Widget extends StatefulWidget {
  const HomeHiringV2Widget({Key? key}) : super(key: key);

  @override
  _HomeHiringV2WidgetState createState() => _HomeHiringV2WidgetState();
}

class _HomeHiringV2WidgetState extends State<HomeHiringV2Widget>
    with TickerProviderStateMixin {
  late HomeHiringV2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeHiringV2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              'Hello, ${valueOrDefault(currentUserDocument?.firstName, '')}!',
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              'Good morning!',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (valueOrDefault<bool>(
                        currentUserDocument?.isPremium, false))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Container(
                            width: 100.0,
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFCCAA66),
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Premium',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('createJob_v1');
                            },
                            child: Container(
                              width: 100.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF26C6DA),
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Post Job',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                child: Text(
                  'My Jobs',
                  style: FlutterFlowTheme.of(context).headlineSmall,
                ),
              ),
              Container(
                width: double.infinity,
                height: 250.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 12.0, 12.0),
                      child: Container(
                        width: 230.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x34090F13),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 140.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 12.0, 12.0, 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Create Your First Job',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: Colors.white,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Tap here to get started!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 150.0,
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.91, 0.0),
                                          child: Container(
                                            width: 28.0,
                                            height: 28.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1610737241336-371badac3b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.62, 0.0),
                                          child: Container(
                                            width: 28.0,
                                            height: 28.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.35, 0.0),
                                          child: Container(
                                            width: 28.0,
                                            height: 28.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1598346762291-aee88549193f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
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
