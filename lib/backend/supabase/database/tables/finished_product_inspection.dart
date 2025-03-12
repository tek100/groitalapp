import '../database.dart';

class FinishedProductInspectionTable
    extends SupabaseTable<FinishedProductInspectionRow> {
  @override
  String get tableName => 'finished_product_inspection';

  @override
  FinishedProductInspectionRow createRow(Map<String, dynamic> data) =>
      FinishedProductInspectionRow(data);
}

class FinishedProductInspectionRow extends SupabaseDataRow {
  FinishedProductInspectionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FinishedProductInspectionTable();

  String get inspectionId => getField<String>('inspection_id')!;
  set inspectionId(String value) => setField<String>('inspection_id', value);

  int get productName => getField<int>('product_name')!;
  set productName(int value) => setField<int>('product_name', value);

  String get batchNo => getField<String>('batch_no')!;
  set batchNo(String value) => setField<String>('batch_no', value);

  double get moisture => getField<double>('moisture')!;
  set moisture(double value) => setField<double>('moisture', value);

  double get totalWeight => getField<double>('total_weight')!;
  set totalWeight(double value) => setField<double>('total_weight', value);

  String? get inspectedBy => getField<String>('inspected_by');
  set inspectedBy(String? value) => setField<String>('inspected_by', value);

  DateTime get inspectionDate => getField<DateTime>('inspection_date')!;
  set inspectionDate(DateTime value) =>
      setField<DateTime>('inspection_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get verifiedBy => getField<String>('verified_by');
  set verifiedBy(String? value) => setField<String>('verified_by', value);
}
