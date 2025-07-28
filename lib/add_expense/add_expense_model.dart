import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_expense_widget.dart' show AddExpenseWidget;
import 'package:flutter/material.dart';

class AddExpenseModel extends FlutterFlowModel<AddExpenseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ExpenseName widget.
  FocusNode? expenseNameFocusNode;
  TextEditingController? expenseNameTextController;
  String? Function(BuildContext, String?)? expenseNameTextControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expenseNameFocusNode?.dispose();
    expenseNameTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
