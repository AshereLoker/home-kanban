// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_database_impl.dart';

// ignore_for_file: type=lint
class $KanbanEntitiesTable extends KanbanEntities
    with TableInfo<$KanbanEntitiesTable, KanbanEntitie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanbanEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [key, name, body];
  @override
  String get aliasedName => _alias ?? 'kanban_entities';
  @override
  String get actualTableName => 'kanban_entities';
  @override
  VerificationContext validateIntegrity(Insertable<KanbanEntitie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(_bodyMeta,
          body.isAcceptableOrUnknown(data['description']!, _bodyMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  KanbanEntitie map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanbanEntitie(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      body: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $KanbanEntitiesTable createAlias(String alias) {
    return $KanbanEntitiesTable(attachedDatabase, alias);
  }
}

class KanbanEntitie extends DataClass implements Insertable<KanbanEntitie> {
  final String key;
  final String name;
  final String? body;
  const KanbanEntitie({required this.key, required this.name, this.body});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || body != null) {
      map['description'] = Variable<String>(body);
    }
    return map;
  }

  KanbanEntitiesCompanion toCompanion(bool nullToAbsent) {
    return KanbanEntitiesCompanion(
      key: Value(key),
      name: Value(name),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
    );
  }

  factory KanbanEntitie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanbanEntitie(
      key: serializer.fromJson<String>(json['key']),
      name: serializer.fromJson<String>(json['name']),
      body: serializer.fromJson<String?>(json['body']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'name': serializer.toJson<String>(name),
      'body': serializer.toJson<String?>(body),
    };
  }

  KanbanEntitie copyWith(
          {String? key,
          String? name,
          Value<String?> body = const Value.absent()}) =>
      KanbanEntitie(
        key: key ?? this.key,
        name: name ?? this.name,
        body: body.present ? body.value : this.body,
      );
  @override
  String toString() {
    return (StringBuffer('KanbanEntitie(')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, name, body);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanbanEntitie &&
          other.key == this.key &&
          other.name == this.name &&
          other.body == this.body);
}

class KanbanEntitiesCompanion extends UpdateCompanion<KanbanEntitie> {
  final Value<String> key;
  final Value<String> name;
  final Value<String?> body;
  const KanbanEntitiesCompanion({
    this.key = const Value.absent(),
    this.name = const Value.absent(),
    this.body = const Value.absent(),
  });
  KanbanEntitiesCompanion.insert({
    required String key,
    required String name,
    this.body = const Value.absent(),
  })  : key = Value(key),
        name = Value(name);
  static Insertable<KanbanEntitie> custom({
    Expression<String>? key,
    Expression<String>? name,
    Expression<String>? body,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (name != null) 'name': name,
      if (body != null) 'description': body,
    });
  }

  KanbanEntitiesCompanion copyWith(
      {Value<String>? key, Value<String>? name, Value<String?>? body}) {
    return KanbanEntitiesCompanion(
      key: key ?? this.key,
      name: name ?? this.name,
      body: body ?? this.body,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (body.present) {
      map['description'] = Variable<String>(body.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanbanEntitiesCompanion(')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }
}

abstract class _$KanbanDatabaseImpl extends GeneratedDatabase {
  _$KanbanDatabaseImpl(QueryExecutor e) : super(e);
  late final $KanbanEntitiesTable kanbanEntities = $KanbanEntitiesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [kanbanEntities];
}
