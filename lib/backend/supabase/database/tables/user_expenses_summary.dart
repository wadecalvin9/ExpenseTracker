import '../database.dart';

class UserExpensesSummaryTable extends SupabaseTable<UserExpensesSummaryRow> {
  @override
  String get tableName => 'user_expenses_summary';

  @override
  UserExpensesSummaryRow createRow(Map<String, dynamic> data) =>
      UserExpensesSummaryRow(data);
}

class UserExpensesSummaryRow extends SupabaseDataRow {
  UserExpensesSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserExpensesSummaryTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get expenseName => getField<String>('expense_name');
  set expenseName(String? value) => setField<String>('expense_name', value);

  double? get expenseAmount => getField<double>('expense_amount');
  set expenseAmount(double? value) => setField<double>('expense_amount', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get totalExpenses => getField<double>('total_expenses');
  set totalExpenses(double? value) => setField<double>('total_expenses', value);
}
