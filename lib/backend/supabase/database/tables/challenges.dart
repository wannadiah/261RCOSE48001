import '../database.dart';

class ChallengesTable extends SupabaseTable<ChallengesRow> {
  @override
  String get tableName => 'challenges';

  @override
  ChallengesRow createRow(Map<String, dynamic> data) => ChallengesRow(data);
}

class ChallengesRow extends SupabaseDataRow {
  ChallengesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChallengesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get creatorId => getField<String>('creator_id');
  set creatorId(String? value) => setField<String>('creator_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get cardImage => getField<String>('card_image');
  set cardImage(String? value) => setField<String>('card_image', value);

  String? get hex => getField<String>('hex');
  set hex(String? value) => setField<String>('hex', value);

  DateTime? get duedate => getField<DateTime>('duedate');
  set duedate(DateTime? value) => setField<DateTime>('duedate', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  String? get completedCard => getField<String>('completed_card');
  set completedCard(String? value) => setField<String>('completed_card', value);
}
