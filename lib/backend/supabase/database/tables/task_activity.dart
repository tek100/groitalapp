import '../database.dart';

class TaskActivityTable extends SupabaseTable<TaskActivityRow> {
  @override
  String get tableName => 'task_activity';

  @override
  TaskActivityRow createRow(Map<String, dynamic> data) => TaskActivityRow(data);
}

class TaskActivityRow extends SupabaseDataRow {
  TaskActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskActivityTable();

  String? get frequency => getField<String>('frequency');
  set frequency(String? value) => setField<String>('frequency', value);

  String? get completionWindow => getField<String>('completion_window');
  set completionWindow(String? value) =>
      setField<String>('completion_window', value);

  String? get deadline => getField<String>('deadline');
  set deadline(String? value) => setField<String>('deadline', value);

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  DateTime? get activeAt => getField<DateTime>('active_at');
  set activeAt(DateTime? value) => setField<DateTime>('active_at', value);

  DateTime? get pausedAt => getField<DateTime>('paused_at');
  set pausedAt(DateTime? value) => setField<DateTime>('paused_at', value);
}
