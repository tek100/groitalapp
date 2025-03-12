import '../database.dart';

class WasteMaterialTable extends SupabaseTable<WasteMaterialRow> {
  @override
  String get tableName => 'waste_material';

  @override
  WasteMaterialRow createRow(Map<String, dynamic> data) =>
      WasteMaterialRow(data);
}

class WasteMaterialRow extends SupabaseDataRow {
  WasteMaterialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WasteMaterialTable();

  String get wasteId => getField<String>('waste_id')!;
  set wasteId(String value) => setField<String>('waste_id', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get batchNo => getField<String>('batch_no');
  set batchNo(String? value) => setField<String>('batch_no', value);
}
