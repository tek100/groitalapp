import '../database.dart';

class ColumnsMetadataTable extends SupabaseTable<ColumnsMetadataRow> {
  @override
  String get tableName => 'columns_metadata';

  @override
  ColumnsMetadataRow createRow(Map<String, dynamic> data) =>
      ColumnsMetadataRow(data);
}

class ColumnsMetadataRow extends SupabaseDataRow {
  ColumnsMetadataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ColumnsMetadataTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get tableId => getField<String>('table_id')!;
  set tableId(String value) => setField<String>('table_id', value);

  String? get columnName => getField<String>('column_name');
  set columnName(String? value) => setField<String>('column_name', value);

  String? get dataType => getField<String>('data_type');
  set dataType(String? value) => setField<String>('data_type', value);

  String? get referenceTable => getField<String>('reference_table');
  set referenceTable(String? value) =>
      setField<String>('reference_table', value);

  String? get referenceColumn => getField<String>('reference_column');
  set referenceColumn(String? value) =>
      setField<String>('reference_column', value);

  bool? get softReference => getField<bool>('soft_reference');
  set softReference(bool? value) => setField<bool>('soft_reference', value);
}
