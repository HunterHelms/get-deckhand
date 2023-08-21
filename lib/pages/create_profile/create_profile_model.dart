import '/auth/firebase_auth/auth_util.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for firstName widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for lastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for city widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  String? _cityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for zip widget.
  TextEditingController? zipController;
  String? Function(BuildContext, String?)? zipControllerValidator;
  String? _zipControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for hiring widget.
  bool? hiringValue;
  FormFieldController<bool>? hiringValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    cityControllerValidator = _cityControllerValidator;
    zipControllerValidator = _zipControllerValidator;
  }

  void dispose() {
    firstNameController?.dispose();
    lastNameController?.dispose();
    cityController?.dispose();
    zipController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
