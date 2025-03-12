import '../database.dart';

class DepartmentTable extends SupabaseTable<DepartmentRow> {
  @override
  String get tableName => 'department';

  @override
  DepartmentRow createRow(Map<String, dynamic> data) => DepartmentRow(data);
}

class DepartmentRow extends SupabaseDataRow {
  DepartmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepartmentTable();

  String get departmentId => getField<String>('department_id')!;
  set departmentId(String value) => setField<String>('department_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
