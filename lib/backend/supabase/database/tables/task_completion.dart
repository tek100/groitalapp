import '../database.dart';

class TaskCompletionTable extends SupabaseTable<TaskCompletionRow> {
  @override
  String get tableName => 'task_completion';

  @override
  TaskCompletionRow createRow(Map<String, dynamic> data) =>
      TaskCompletionRow(data);
}

class TaskCompletionRow extends SupabaseDataRow {
  TaskCompletionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskCompletionTable();

  String get completionId => getField<String>('completion_id')!;
  set completionId(String value) => setField<String>('completion_id', value);

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String? get verifiedBy => getField<String>('verified_by');
  set verifiedBy(String? value) => setField<String>('verified_by', value);

  DateTime? get verifiedAt => getField<DateTime>('verified_at');
  set verifiedAt(DateTime? value) => setField<DateTime>('verified_at', value);

  DateTime get completedAt => getField<DateTime>('completed_at')!;
  set completedAt(DateTime value) => setField<DateTime>('completed_at', value);

  String? get completionNotes => getField<String>('completion_notes');
  set completionNotes(String? value) =>
      setField<String>('completion_notes', value);

  bool? get verified => getField<bool>('verified');
  set verified(bool? value) => setField<bool>('verified', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
