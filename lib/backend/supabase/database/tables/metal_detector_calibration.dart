import '../database.dart';

class MetalDetectorCalibrationTable
    extends SupabaseTable<MetalDetectorCalibrationRow> {
  @override
  String get tableName => 'metal_detector_calibration';

  @override
  MetalDetectorCalibrationRow createRow(Map<String, dynamic> data) =>
      MetalDetectorCalibrationRow(data);
}

class MetalDetectorCalibrationRow extends SupabaseDataRow {
  MetalDetectorCalibrationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MetalDetectorCalibrationTable();

  int? get numberOfMetals => getField<int>('number_of_metals');
  set numberOfMetals(int? value) => setField<int>('number_of_metals', value);

  String? get metalType => getField<String>('metal_type');
  set metalType(String? value) => setField<String>('metal_type', value);

  String? get checkedBy => getField<String>('checked_by');
  set checkedBy(String? value) => setField<String>('checked_by', value);
}
