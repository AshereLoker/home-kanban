// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database_impl.dart';

// ignore_for_file: type=lint
class $KanbanEntitiesTable extends KanbanEntities
    with TableInfo<$KanbanEntitiesTable, KanbanEntitie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanbanEntitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'due_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _finishedAtMeta =
      const VerificationMeta('finishedAt');
  @override
  late final GeneratedColumn<DateTime> finishedAt = GeneratedColumn<DateTime>(
      'finished_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<int> orderId = GeneratedColumn<int>(
      'order_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _spendedTimeSecondsMeta =
      const VerificationMeta('spendedTimeSeconds');
  @override
  late final GeneratedColumn<int> spendedTimeSeconds = GeneratedColumn<int>(
      'spended_time_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<KanbanStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<KanbanStatus>($KanbanEntitiesTable.$converterstatus);
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
  @override
  List<GeneratedColumn> get $columns => [
        createAt,
        dueDate,
        finishedAt,
        orderId,
        spendedTimeSeconds,
        description,
        status,
        key,
        name
      ];
  @override
  String get aliasedName => _alias ?? 'kanban_entities';
  @override
  String get actualTableName => 'kanban_entities';
  @override
  VerificationContext validateIntegrity(Insertable<KanbanEntitie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    } else if (isInserting) {
      context.missing(_createAtMeta);
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta));
    }
    if (data.containsKey('finished_at')) {
      context.handle(
          _finishedAtMeta,
          finishedAt.isAcceptableOrUnknown(
              data['finished_at']!, _finishedAtMeta));
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('spended_time_seconds')) {
      context.handle(
          _spendedTimeSecondsMeta,
          spendedTimeSeconds.isAcceptableOrUnknown(
              data['spended_time_seconds']!, _spendedTimeSecondsMeta));
    } else if (isInserting) {
      context.missing(_spendedTimeSecondsMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  KanbanEntitie map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanbanEntitie(
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_date']),
      finishedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finished_at']),
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_id'])!,
      spendedTimeSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}spended_time_seconds'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      status: $KanbanEntitiesTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $KanbanEntitiesTable createAlias(String alias) {
    return $KanbanEntitiesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<KanbanStatus, String, String> $converterstatus =
      const EnumNameConverter<KanbanStatus>(KanbanStatus.values);
}

class KanbanEntitie extends DataClass implements Insertable<KanbanEntitie> {
  final DateTime createAt;
  final DateTime? dueDate;
  final DateTime? finishedAt;
  final int orderId;
  final int spendedTimeSeconds;
  final String? description;
  final KanbanStatus status;
  final String key;
  final String name;
  const KanbanEntitie(
      {required this.createAt,
      this.dueDate,
      this.finishedAt,
      required this.orderId,
      required this.spendedTimeSeconds,
      this.description,
      required this.status,
      required this.key,
      required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['create_at'] = Variable<DateTime>(createAt);
    if (!nullToAbsent || dueDate != null) {
      map['due_date'] = Variable<DateTime>(dueDate);
    }
    if (!nullToAbsent || finishedAt != null) {
      map['finished_at'] = Variable<DateTime>(finishedAt);
    }
    map['order_id'] = Variable<int>(orderId);
    map['spended_time_seconds'] = Variable<int>(spendedTimeSeconds);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    {
      final converter = $KanbanEntitiesTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status));
    }
    map['key'] = Variable<String>(key);
    map['name'] = Variable<String>(name);
    return map;
  }

  KanbanEntitiesCompanion toCompanion(bool nullToAbsent) {
    return KanbanEntitiesCompanion(
      createAt: Value(createAt),
      dueDate: dueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(dueDate),
      finishedAt: finishedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(finishedAt),
      orderId: Value(orderId),
      spendedTimeSeconds: Value(spendedTimeSeconds),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      status: Value(status),
      key: Value(key),
      name: Value(name),
    );
  }

  factory KanbanEntitie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanbanEntitie(
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      dueDate: serializer.fromJson<DateTime?>(json['dueDate']),
      finishedAt: serializer.fromJson<DateTime?>(json['finishedAt']),
      orderId: serializer.fromJson<int>(json['orderId']),
      spendedTimeSeconds: serializer.fromJson<int>(json['spendedTimeSeconds']),
      description: serializer.fromJson<String?>(json['description']),
      status: $KanbanEntitiesTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      key: serializer.fromJson<String>(json['key']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createAt': serializer.toJson<DateTime>(createAt),
      'dueDate': serializer.toJson<DateTime?>(dueDate),
      'finishedAt': serializer.toJson<DateTime?>(finishedAt),
      'orderId': serializer.toJson<int>(orderId),
      'spendedTimeSeconds': serializer.toJson<int>(spendedTimeSeconds),
      'description': serializer.toJson<String?>(description),
      'status': serializer
          .toJson<String>($KanbanEntitiesTable.$converterstatus.toJson(status)),
      'key': serializer.toJson<String>(key),
      'name': serializer.toJson<String>(name),
    };
  }

  KanbanEntitie copyWith(
          {DateTime? createAt,
          Value<DateTime?> dueDate = const Value.absent(),
          Value<DateTime?> finishedAt = const Value.absent(),
          int? orderId,
          int? spendedTimeSeconds,
          Value<String?> description = const Value.absent(),
          KanbanStatus? status,
          String? key,
          String? name}) =>
      KanbanEntitie(
        createAt: createAt ?? this.createAt,
        dueDate: dueDate.present ? dueDate.value : this.dueDate,
        finishedAt: finishedAt.present ? finishedAt.value : this.finishedAt,
        orderId: orderId ?? this.orderId,
        spendedTimeSeconds: spendedTimeSeconds ?? this.spendedTimeSeconds,
        description: description.present ? description.value : this.description,
        status: status ?? this.status,
        key: key ?? this.key,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('KanbanEntitie(')
          ..write('createAt: $createAt, ')
          ..write('dueDate: $dueDate, ')
          ..write('finishedAt: $finishedAt, ')
          ..write('orderId: $orderId, ')
          ..write('spendedTimeSeconds: $spendedTimeSeconds, ')
          ..write('description: $description, ')
          ..write('status: $status, ')
          ..write('key: $key, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(createAt, dueDate, finishedAt, orderId,
      spendedTimeSeconds, description, status, key, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanbanEntitie &&
          other.createAt == this.createAt &&
          other.dueDate == this.dueDate &&
          other.finishedAt == this.finishedAt &&
          other.orderId == this.orderId &&
          other.spendedTimeSeconds == this.spendedTimeSeconds &&
          other.description == this.description &&
          other.status == this.status &&
          other.key == this.key &&
          other.name == this.name);
}

class KanbanEntitiesCompanion extends UpdateCompanion<KanbanEntitie> {
  final Value<DateTime> createAt;
  final Value<DateTime?> dueDate;
  final Value<DateTime?> finishedAt;
  final Value<int> orderId;
  final Value<int> spendedTimeSeconds;
  final Value<String?> description;
  final Value<KanbanStatus> status;
  final Value<String> key;
  final Value<String> name;
  const KanbanEntitiesCompanion({
    this.createAt = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.finishedAt = const Value.absent(),
    this.orderId = const Value.absent(),
    this.spendedTimeSeconds = const Value.absent(),
    this.description = const Value.absent(),
    this.status = const Value.absent(),
    this.key = const Value.absent(),
    this.name = const Value.absent(),
  });
  KanbanEntitiesCompanion.insert({
    required DateTime createAt,
    this.dueDate = const Value.absent(),
    this.finishedAt = const Value.absent(),
    required int orderId,
    required int spendedTimeSeconds,
    this.description = const Value.absent(),
    required KanbanStatus status,
    required String key,
    required String name,
  })  : createAt = Value(createAt),
        orderId = Value(orderId),
        spendedTimeSeconds = Value(spendedTimeSeconds),
        status = Value(status),
        key = Value(key),
        name = Value(name);
  static Insertable<KanbanEntitie> custom({
    Expression<DateTime>? createAt,
    Expression<DateTime>? dueDate,
    Expression<DateTime>? finishedAt,
    Expression<int>? orderId,
    Expression<int>? spendedTimeSeconds,
    Expression<String>? description,
    Expression<String>? status,
    Expression<String>? key,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (createAt != null) 'create_at': createAt,
      if (dueDate != null) 'due_date': dueDate,
      if (finishedAt != null) 'finished_at': finishedAt,
      if (orderId != null) 'order_id': orderId,
      if (spendedTimeSeconds != null)
        'spended_time_seconds': spendedTimeSeconds,
      if (description != null) 'description': description,
      if (status != null) 'status': status,
      if (key != null) 'key': key,
      if (name != null) 'name': name,
    });
  }

  KanbanEntitiesCompanion copyWith(
      {Value<DateTime>? createAt,
      Value<DateTime?>? dueDate,
      Value<DateTime?>? finishedAt,
      Value<int>? orderId,
      Value<int>? spendedTimeSeconds,
      Value<String?>? description,
      Value<KanbanStatus>? status,
      Value<String>? key,
      Value<String>? name}) {
    return KanbanEntitiesCompanion(
      createAt: createAt ?? this.createAt,
      dueDate: dueDate ?? this.dueDate,
      finishedAt: finishedAt ?? this.finishedAt,
      orderId: orderId ?? this.orderId,
      spendedTimeSeconds: spendedTimeSeconds ?? this.spendedTimeSeconds,
      description: description ?? this.description,
      status: status ?? this.status,
      key: key ?? this.key,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (finishedAt.present) {
      map['finished_at'] = Variable<DateTime>(finishedAt.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<int>(orderId.value);
    }
    if (spendedTimeSeconds.present) {
      map['spended_time_seconds'] = Variable<int>(spendedTimeSeconds.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (status.present) {
      final converter = $KanbanEntitiesTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status.value));
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanbanEntitiesCompanion(')
          ..write('createAt: $createAt, ')
          ..write('dueDate: $dueDate, ')
          ..write('finishedAt: $finishedAt, ')
          ..write('orderId: $orderId, ')
          ..write('spendedTimeSeconds: $spendedTimeSeconds, ')
          ..write('description: $description, ')
          ..write('status: $status, ')
          ..write('key: $key, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftDatabaseImpl extends GeneratedDatabase {
  _$DriftDatabaseImpl(QueryExecutor e) : super(e);
  late final $KanbanEntitiesTable kanbanEntities = $KanbanEntitiesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [kanbanEntities];
}
