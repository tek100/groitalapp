import '../database.dart';

class InstructionsTable extends SupabaseTable<InstructionsRow> {
  @override
  String get tableName => 'instructions';

  @override
  InstructionsRow createRow(Map<String, dynamic> data) => InstructionsRow(data);
}

class InstructionsRow extends SupabaseDataRow {
  InstructionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InstructionsTable();

  String get instructionId => getField<String>('instruction_id')!;
  set instructionId(String value) => setField<String>('instruction_id', value);

  String get taskId => getField<String>('task_id')!;
  set taskId(String value) => setField<String>('task_id', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
