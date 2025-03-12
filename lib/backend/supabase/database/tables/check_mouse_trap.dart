import '../database.dart';

class CheckMouseTrapTable extends SupabaseTable<CheckMouseTrapRow> {
  @override
  String get tableName => 'check_mouse_trap';

  @override
  CheckMouseTrapRow createRow(Map<String, dynamic> data) =>
      CheckMouseTrapRow(data);
}

class CheckMouseTrapRow extends SupabaseDataRow {
  CheckMouseTrapRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CheckMouseTrapTable();

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get numberOfRodents => getField<int>('number_of_rodents');
  set numberOfRodents(int? value) => setField<int>('number_of_rodents', value);

  String? get department => getField<String>('department');
  set department(String? value) => setField<String>('department', value);
}
