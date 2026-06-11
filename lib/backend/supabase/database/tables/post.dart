import '../database.dart';

class PostTable extends SupabaseTable<PostRow> {
  @override
  String get tableName => 'post';

  @override
  PostRow createRow(Map<String, dynamic> data) => PostRow(data);
}

class PostRow extends SupabaseDataRow {
  PostRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get body => getField<String>('body');
  set body(String? value) => setField<String>('body', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
