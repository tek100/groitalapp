import '../database.dart';

class DryingRecordsTable extends SupabaseTable<DryingRecordsRow> {
  @override
  String get tableName => 'drying_records';

  @override
  DryingRecordsRow createRow(Map<String, dynamic> data) =>
      DryingRecordsRow(data);
}

class DryingRecordsRow extends SupabaseDataRow {
  DryingRecordsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DryingRecordsTable();

  String get dryingId => getField<String>('drying_id')!;
  set dryingId(String value) => setField<String>('drying_id', value);

  int? get product => getField<int>('product');
  set product(int? value) => setField<int>('product', value);

  DateTime get startTime => getField<DateTime>('start_time')!;
  set startTime(DateTime value) => setField<DateTime>('start_time', value);

  DateTime get endTime => getField<DateTime>('end_time')!;
  set endTime(DateTime value) => setField<DateTime>('end_time', value);

  int get numberOfCrates => getField<int>('number_of_crates')!;
  set numberOfCrates(int value) => setField<int>('number_of_crates', value);

  String get batchNo => getField<String>('batch_no')!;
  set batchNo(String value) => setField<String>('batch_no', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get operator => getField<String>('operator');
  set operator(String? value) => setField<String>('operator', value);
}
