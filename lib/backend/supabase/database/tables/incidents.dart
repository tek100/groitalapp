import '../database.dart';

class IncidentsTable extends SupabaseTable<IncidentsRow> {
  @override
  String get tableName => 'incidents';

  @override
  IncidentsRow createRow(Map<String, dynamic> data) => IncidentsRow(data);
}

class IncidentsRow extends SupabaseDataRow {
  IncidentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IncidentsTable();

  String get incidentId => getField<String>('incident_id')!;
  set incidentId(String value) => setField<String>('incident_id', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  String get departmentId => getField<String>('department_id')!;
  set departmentId(String value) => setField<String>('department_id', value);

  String get isResolved => getField<String>('is_resolved')!;
  set isResolved(String value) => setField<String>('is_resolved', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get reportedBy => getField<String>('reported_by')!;
  set reportedBy(String value) => setField<String>('reported_by', value);

  String? get severity => getField<String>('severity');
  set severity(String? value) => setField<String>('severity', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);
}
