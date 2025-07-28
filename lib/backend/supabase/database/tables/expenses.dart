import '../database.dart';

class ExpensesTable extends SupabaseTable<ExpensesRow> {
  @override
  String get tableName => 'expenses';

  @override
  ExpensesRow createRow(Map<String, dynamic> data) => ExpensesRow(data);
}

class ExpensesRow extends SupabaseDataRow {
  ExpensesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExpensesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get expenseName => getField<String>('expense_name')!;
  set expenseName(String value) => setField<String>('expense_name', value);

  double get expenseAmount => getField<double>('expense_amount')!;
  set expenseAmount(double value) => setField<double>('expense_amount', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
