import '../database.dart';

class RawMaterialTable extends SupabaseTable<RawMaterialRow> {
  @override
  String get tableName => 'raw_material';

  @override
  RawMaterialRow createRow(Map<String, dynamic> data) => RawMaterialRow(data);
}

class RawMaterialRow extends SupabaseDataRow {
  RawMaterialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RawMaterialTable();

  String get materialId => getField<String>('material_id')!;
  set materialId(String value) => setField<String>('material_id', value);

  String get materialType => getField<String>('material_type')!;
  set materialType(String value) => setField<String>('material_type', value);

  double? get brixLevel => getField<double>('brix_level');
  set brixLevel(double? value) => setField<double>('brix_level', value);

  String get supplier => getField<String>('supplier')!;
  set supplier(String value) => setField<String>('supplier', value);

  String? get recievedBy => getField<String>('recieved_by');
  set recievedBy(String? value) => setField<String>('recieved_by', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
