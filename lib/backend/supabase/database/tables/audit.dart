import '../database.dart';

class AuditTable extends SupabaseTable<AuditRow> {
  @override
  String get tableName => 'audit';

  @override
  AuditRow createRow(Map<String, dynamic> data) => AuditRow(data);
}

class AuditRow extends SupabaseDataRow {
  AuditRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuditTable();

  String get auditId => getField<String>('audit_id')!;
  set auditId(String value) => setField<String>('audit_id', value);

  String get auditType => getField<String>('audit_type')!;
  set auditType(String value) => setField<String>('audit_type', value);

  DateTime get scheduledDate => getField<DateTime>('scheduled_date')!;
  set scheduledDate(DateTime value) =>
      setField<DateTime>('scheduled_date', value);

  String get conductedBy => getField<String>('conducted_by')!;
  set conductedBy(String value) => setField<String>('conducted_by', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get findings => getField<String>('findings');
  set findings(String? value) => setField<String>('findings', value);

  double? get complianceScore => getField<double>('compliance_score');
  set complianceScore(double? value) =>
      setField<double>('compliance_score', value);

  String get reviewedBy => getField<String>('reviewed_by')!;
  set reviewedBy(String value) => setField<String>('reviewed_by', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  String get departmentId => getField<String>('department_id')!;
  set departmentId(String value) => setField<String>('department_id', value);

  String get auditTitle => getField<String>('audit_title')!;
  set auditTitle(String value) => setField<String>('audit_title', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
