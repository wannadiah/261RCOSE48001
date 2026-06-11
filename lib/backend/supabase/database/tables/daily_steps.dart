import '../database.dart';

class DailyStepsTable extends SupabaseTable<DailyStepsRow> {
  @override
  String get tableName => 'daily_steps';

  @override
  DailyStepsRow createRow(Map<String, dynamic> data) => DailyStepsRow(data);
}

class DailyStepsRow extends SupabaseDataRow {
  DailyStepsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DailyStepsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get stepCount => getField<int>('step_count')!;
  set stepCount(int value) => setField<int>('step_count', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  DateTime? get syncedAt => getField<DateTime>('synced_at');
  set syncedAt(DateTime? value) => setField<DateTime>('synced_at', value);
}
