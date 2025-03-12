import '../database.dart';

class UncomplianceTable extends SupabaseTable<UncomplianceRow> {
  @override
  String get tableName => 'uncompliance';

  @override
  UncomplianceRow createRow(Map<String, dynamic> data) => UncomplianceRow(data);
}

class UncomplianceRow extends SupabaseDataRow {
  UncomplianceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UncomplianceTable();

  String get uncomplianceId => getField<String>('uncompliance_id')!;
  set uncomplianceId(String value) =>
      setField<String>('uncompliance_id', value);

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String get reason => getField<String>('reason')!;
  set reason(String value) => setField<String>('reason', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
