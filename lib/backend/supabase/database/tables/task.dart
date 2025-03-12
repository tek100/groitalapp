import '../database.dart';

class TaskTable extends SupabaseTable<TaskRow> {
  @override
  String get tableName => 'task';

  @override
  TaskRow createRow(Map<String, dynamic> data) => TaskRow(data);
}

class TaskRow extends SupabaseDataRow {
  TaskRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTable();

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String get taskName => getField<String>('task_name')!;
  set taskName(String value) => setField<String>('task_name', value);

  String get taskType => getField<String>('task_type')!;
  set taskType(String value) => setField<String>('task_type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get departmentId => getField<String>('department_id')!;
  set departmentId(String value) => setField<String>('department_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  DateTime get activeAt => getField<DateTime>('active_at')!;
  set activeAt(DateTime value) => setField<DateTime>('active_at', value);

  DateTime? get deadline => getField<DateTime>('deadline');
  set deadline(DateTime? value) => setField<DateTime>('deadline', value);

  String? get completionWindow => getField<String>('completion_window');
  set completionWindow(String? value) =>
      setField<String>('completion_window', value);

  DateTime? get pausedAt => getField<DateTime>('paused_at');
  set pausedAt(DateTime? value) => setField<DateTime>('paused_at', value);

  String? get frequency => getField<String>('frequency');
  set frequency(String? value) => setField<String>('frequency', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  bool? get skippable => getField<bool>('skippable');
  set skippable(bool? value) => setField<bool>('skippable', value);
}
