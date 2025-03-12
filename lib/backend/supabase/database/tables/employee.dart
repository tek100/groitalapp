import '../database.dart';

class EmployeeTable extends SupabaseTable<EmployeeRow> {
  @override
  String get tableName => 'employee';

  @override
  EmployeeRow createRow(Map<String, dynamic> data) => EmployeeRow(data);
}

class EmployeeRow extends SupabaseDataRow {
  EmployeeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmployeeTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get department => getField<String>('department');
  set department(String? value) => setField<String>('department', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);
}
