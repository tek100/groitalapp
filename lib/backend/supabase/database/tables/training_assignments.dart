import '../database.dart';

class TrainingAssignmentsTable extends SupabaseTable<TrainingAssignmentsRow> {
  @override
  String get tableName => 'training_assignments';

  @override
  TrainingAssignmentsRow createRow(Map<String, dynamic> data) =>
      TrainingAssignmentsRow(data);
}

class TrainingAssignmentsRow extends SupabaseDataRow {
  TrainingAssignmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrainingAssignmentsTable();

  String get assignmentId => getField<String>('assignment_id')!;
  set assignmentId(String value) => setField<String>('assignment_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get trainingId => getField<String>('training_id')!;
  set trainingId(String value) => setField<String>('training_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
