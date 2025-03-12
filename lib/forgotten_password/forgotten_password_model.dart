import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgotten_password_widget.dart' show ForgottenPasswordWidget;
import 'package:flutter/material.dart';

class ForgottenPasswordModel extends FlutterFlowModel<ForgottenPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for updatePassword widget.
  FocusNode? updatePasswordFocusNode;
  TextEditingController? updatePasswordTextController;
  late bool updatePasswordVisibility;
  String? Function(BuildContext, String?)?
      updatePasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    updatePasswordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    updatePasswordFocusNode?.dispose();
    updatePasswordTextController?.dispose();
  }
}
