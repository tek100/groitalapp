import '../database.dart';

class SubtaskTable extends SupabaseTable<SubtaskRow> {
  @override
  String get tableName => 'subtask';

  @override
  SubtaskRow createRow(Map<String, dynamic> data) => SubtaskRow(data);
}

class SubtaskRow extends SupabaseDataRow {
  SubtaskRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubtaskTable();

  String get subtaskId => getField<String>('subtask_id')!;
  set subtaskId(String value) => setField<String>('subtask_id', value);

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String get subtaskName => getField<String>('subtask_name')!;
  set subtaskName(String value) => setField<String>('subtask_name', value);

  String get subtaskType => getField<String>('subtask_type')!;
  set subtaskType(String value) => setField<String>('subtask_type', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool get subtaskSkippable => getField<bool>('subtask_skippable')!;
  set subtaskSkippable(bool value) =>
      setField<bool>('subtask_skippable', value);
}
