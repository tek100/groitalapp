import '../database.dart';

class CleanInsectrocutorTable extends SupabaseTable<CleanInsectrocutorRow> {
  @override
  String get tableName => 'clean_insectrocutor';

  @override
  CleanInsectrocutorRow createRow(Map<String, dynamic> data) =>
      CleanInsectrocutorRow(data);
}

class CleanInsectrocutorRow extends SupabaseDataRow {
  CleanInsectrocutorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CleanInsectrocutorTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get number => getField<int>('number');
  set number(int? value) => setField<int>('number', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get inspectedBy => getField<String>('inspected_by');
  set inspectedBy(String? value) => setField<String>('inspected_by', value);
}
