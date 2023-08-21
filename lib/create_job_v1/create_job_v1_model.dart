import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateJobV1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for jobTitle widget.
  TextEditingController? jobTitleController;
  String? Function(BuildContext, String?)? jobTitleControllerValidator;
  String? _jobTitleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for company widget.
  TextEditingController? companyController;
  String? Function(BuildContext, String?)? companyControllerValidator;
  String? _companyControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for vesselName widget.
  TextEditingController? vesselNameController;
  String? Function(BuildContext, String?)? vesselNameControllerValidator;
  String? _vesselNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for vesselLength widget.
  TextEditingController? vesselLengthController;
  String? Function(BuildContext, String?)? vesselLengthControllerValidator;
  String? _vesselLengthControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for jobDuration widget.
  TextEditingController? jobDurationController;
  String? Function(BuildContext, String?)? jobDurationControllerValidator;
  String? _jobDurationControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  String? _addressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for portOfDeparture widget.
  TextEditingController? portOfDepartureController;
  String? Function(BuildContext, String?)? portOfDepartureControllerValidator;
  String? _portOfDepartureControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for minExp widget.
  TextEditingController? minExpController;
  String? Function(BuildContext, String?)? minExpControllerValidator;
  String? _minExpControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for reqCert widget.
  TextEditingController? reqCertController;
  String? Function(BuildContext, String?)? reqCertControllerValidator;
  String? _reqCertControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for dutiesResponsibilities widget.
  TextEditingController? dutiesResponsibilitiesController;
  String? Function(BuildContext, String?)?
      dutiesResponsibilitiesControllerValidator;
  String? _dutiesResponsibilitiesControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    jobTitleControllerValidator = _jobTitleControllerValidator;
    companyControllerValidator = _companyControllerValidator;
    vesselNameControllerValidator = _vesselNameControllerValidator;
    vesselLengthControllerValidator = _vesselLengthControllerValidator;
    jobDurationControllerValidator = _jobDurationControllerValidator;
    addressControllerValidator = _addressControllerValidator;
    portOfDepartureControllerValidator = _portOfDepartureControllerValidator;
    minExpControllerValidator = _minExpControllerValidator;
    reqCertControllerValidator = _reqCertControllerValidator;
    dutiesResponsibilitiesControllerValidator =
        _dutiesResponsibilitiesControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    jobTitleController?.dispose();
    companyController?.dispose();
    vesselNameController?.dispose();
    vesselLengthController?.dispose();
    jobDurationController?.dispose();
    addressController?.dispose();
    portOfDepartureController?.dispose();
    minExpController?.dispose();
    reqCertController?.dispose();
    dutiesResponsibilitiesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
