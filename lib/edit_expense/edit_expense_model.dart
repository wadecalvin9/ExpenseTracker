import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_expense_widget.dart' show EditExpenseWidget;
import 'package:flutter/material.dart';

class EditExpenseModel extends FlutterFlowModel<EditExpenseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ExpenseName widget.
  FocusNode? expenseNameFocusNode;
  TextEditingController? expenseNameTextController;
  String? Function(BuildContext, String?)? expenseNameTextControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ExpensesRow>? edit;

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
