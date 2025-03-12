import '../database.dart';

class TrainingTable extends SupabaseTable<TrainingRow> {
  @override
  String get tableName => 'training';

  @override
  TrainingRow createRow(Map<String, dynamic> data) => TrainingRow(data);
}

class TrainingRow extends SupabaseDataRow {
  TrainingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrainingTable();

  String get trainingId => getField<String>('training_id')!;
  set trainingId(String value) => setField<String>('training_id', value);

  String get topic => getField<String>('topic')!;
  set topic(String value) => setField<String>('topic', value);

  String get conductedBy => getField<String>('conducted_by')!;
  set conductedBy(String value) => setField<String>('conducted_by', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  DateTime? get scheduleAt => getField<DateTime>('schedule_at');
  set scheduleAt(DateTime? value) => setField<DateTime>('schedule_at', value);
}
