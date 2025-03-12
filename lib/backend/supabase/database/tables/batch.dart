import '../database.dart';

class BatchTable extends SupabaseTable<BatchRow> {
  @override
  String get tableName => 'batch';

  @override
  BatchRow createRow(Map<String, dynamic> data) => BatchRow(data);
}

class BatchRow extends SupabaseDataRow {
  BatchRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BatchTable();

  String get batchId => getField<String>('batch_id')!;
  set batchId(String value) => setField<String>('batch_id', value);

  String get batchNo => getField<String>('batch_no')!;
  set batchNo(String value) => setField<String>('batch_no', value);

  String get materialId => getField<String>('material_id')!;
  set materialId(String value) => setField<String>('material_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
