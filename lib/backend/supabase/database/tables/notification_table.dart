import '../database.dart';

class NotificationTableTable extends SupabaseTable<NotificationTableRow> {
  @override
  String get tableName => 'notification_table';

  @override
  NotificationTableRow createRow(Map<String, dynamic> data) =>
      NotificationTableRow(data);
}

class NotificationTableRow extends SupabaseDataRow {
  NotificationTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationTableTable();

  String get notificationId => getField<String>('notification_id')!;
  set notificationId(String value) =>
      setField<String>('notification_id', value);

  String get message => getField<String>('message')!;
  set message(String value) => setField<String>('message', value);

  bool? get readStatus => getField<bool>('read_status');
  set readStatus(bool? value) => setField<bool>('read_status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get employeeId => getField<String>('employee_id')!;
  set employeeId(String value) => setField<String>('employee_id', value);
}
