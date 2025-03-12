import '../database.dart';

class TablesMetadataTable extends SupabaseTable<TablesMetadataRow> {
  @override
  String get tableName => 'tables_metadata';

  @override
  TablesMetadataRow createRow(Map<String, dynamic> data) =>
      TablesMetadataRow(data);
}

class TablesMetadataRow extends SupabaseDataRow {
  TablesMetadataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TablesMetadataTable();

  String get tableId => getField<String>('table_id')!;
  set tableId(String value) => setField<String>('table_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  bool get referencerable => getField<bool>('referencerable')!;
  set referencerable(bool value) => setField<bool>('referencerable', value);
}
