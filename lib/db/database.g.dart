// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $QuestionsTable extends Questions
    with TableInfo<$QuestionsTable, Question> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _questionMeta =
      const VerificationMeta('question');
  @override
  late final GeneratedColumn<String> question = GeneratedColumn<String>(
      'question', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String> answer = GeneratedColumn<String>(
      'answer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice1Meta =
      const VerificationMeta('choice1');
  @override
  late final GeneratedColumn<String> choice1 = GeneratedColumn<String>(
      'choice1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice2Meta =
      const VerificationMeta('choice2');
  @override
  late final GeneratedColumn<String> choice2 = GeneratedColumn<String>(
      'choice2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _choice3Meta =
      const VerificationMeta('choice3');
  @override
  late final GeneratedColumn<String> choice3 = GeneratedColumn<String>(
      'choice3', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  @override
  late final GeneratedColumn<String> explanation = GeneratedColumn<String>(
      'explanation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isCorrectMeta =
      const VerificationMeta('isCorrect');
  @override
  late final GeneratedColumn<bool> isCorrect =
      GeneratedColumn<bool>('is_correct', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_correct" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, question, answer, choice1, choice2, choice3, explanation, isCorrect];
  @override
  String get aliasedName => _alias ?? 'questions';
  @override
  String get actualTableName => 'questions';
  @override
  VerificationContext validateIntegrity(Insertable<Question> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question']!, _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer']!, _answerMeta));
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (data.containsKey('choice1')) {
      context.handle(_choice1Meta,
          choice1.isAcceptableOrUnknown(data['choice1']!, _choice1Meta));
    } else if (isInserting) {
      context.missing(_choice1Meta);
    }
    if (data.containsKey('choice2')) {
      context.handle(_choice2Meta,
          choice2.isAcceptableOrUnknown(data['choice2']!, _choice2Meta));
    } else if (isInserting) {
      context.missing(_choice2Meta);
    }
    if (data.containsKey('choice3')) {
      context.handle(_choice3Meta,
          choice3.isAcceptableOrUnknown(data['choice3']!, _choice3Meta));
    } else if (isInserting) {
      context.missing(_choice3Meta);
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation']!, _explanationMeta));
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    if (data.containsKey('is_correct')) {
      context.handle(_isCorrectMeta,
          isCorrect.isAcceptableOrUnknown(data['is_correct']!, _isCorrectMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Question map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Question(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      question: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question'])!,
      answer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer'])!,
      choice1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice1'])!,
      choice2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice2'])!,
      choice3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}choice3'])!,
      explanation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation'])!,
      isCorrect: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_correct'])!,
    );
  }

  @override
  $QuestionsTable createAlias(String alias) {
    return $QuestionsTable(attachedDatabase, alias);
  }
}

class Question extends DataClass implements Insertable<Question> {
  final int id;
  final String question;
  final String answer;
  final String choice1;
  final String choice2;
  final String choice3;
  final String explanation;
  final bool isCorrect;
  const Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.choice1,
      required this.choice2,
      required this.choice3,
      required this.explanation,
      required this.isCorrect});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['question'] = Variable<String>(question);
    map['answer'] = Variable<String>(answer);
    map['choice1'] = Variable<String>(choice1);
    map['choice2'] = Variable<String>(choice2);
    map['choice3'] = Variable<String>(choice3);
    map['explanation'] = Variable<String>(explanation);
    map['is_correct'] = Variable<bool>(isCorrect);
    return map;
  }

  QuestionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      id: Value(id),
      question: Value(question),
      answer: Value(answer),
      choice1: Value(choice1),
      choice2: Value(choice2),
      choice3: Value(choice3),
      explanation: Value(explanation),
      isCorrect: Value(isCorrect),
    );
  }

  factory Question.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Question(
      id: serializer.fromJson<int>(json['id']),
      question: serializer.fromJson<String>(json['question']),
      answer: serializer.fromJson<String>(json['answer']),
      choice1: serializer.fromJson<String>(json['choice1']),
      choice2: serializer.fromJson<String>(json['choice2']),
      choice3: serializer.fromJson<String>(json['choice3']),
      explanation: serializer.fromJson<String>(json['explanation']),
      isCorrect: serializer.fromJson<bool>(json['isCorrect']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'question': serializer.toJson<String>(question),
      'answer': serializer.toJson<String>(answer),
      'choice1': serializer.toJson<String>(choice1),
      'choice2': serializer.toJson<String>(choice2),
      'choice3': serializer.toJson<String>(choice3),
      'explanation': serializer.toJson<String>(explanation),
      'isCorrect': serializer.toJson<bool>(isCorrect),
    };
  }

  Question copyWith(
          {int? id,
          String? question,
          String? answer,
          String? choice1,
          String? choice2,
          String? choice3,
          String? explanation,
          bool? isCorrect}) =>
      Question(
        id: id ?? this.id,
        question: question ?? this.question,
        answer: answer ?? this.answer,
        choice1: choice1 ?? this.choice1,
        choice2: choice2 ?? this.choice2,
        choice3: choice3 ?? this.choice3,
        explanation: explanation ?? this.explanation,
        isCorrect: isCorrect ?? this.isCorrect,
      );
  @override
  String toString() {
    return (StringBuffer('Question(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('choice1: $choice1, ')
          ..write('choice2: $choice2, ')
          ..write('choice3: $choice3, ')
          ..write('explanation: $explanation, ')
          ..write('isCorrect: $isCorrect')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, question, answer, choice1, choice2, choice3, explanation, isCorrect);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Question &&
          other.id == this.id &&
          other.question == this.question &&
          other.answer == this.answer &&
          other.choice1 == this.choice1 &&
          other.choice2 == this.choice2 &&
          other.choice3 == this.choice3 &&
          other.explanation == this.explanation &&
          other.isCorrect == this.isCorrect);
}

class QuestionsCompanion extends UpdateCompanion<Question> {
  final Value<int> id;
  final Value<String> question;
  final Value<String> answer;
  final Value<String> choice1;
  final Value<String> choice2;
  final Value<String> choice3;
  final Value<String> explanation;
  final Value<bool> isCorrect;
  final Value<int> rowid;
  const QuestionsCompanion({
    this.id = const Value.absent(),
    this.question = const Value.absent(),
    this.answer = const Value.absent(),
    this.choice1 = const Value.absent(),
    this.choice2 = const Value.absent(),
    this.choice3 = const Value.absent(),
    this.explanation = const Value.absent(),
    this.isCorrect = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestionsCompanion.insert({
    required int id,
    required String question,
    required String answer,
    required String choice1,
    required String choice2,
    required String choice3,
    required String explanation,
    this.isCorrect = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        question = Value(question),
        answer = Value(answer),
        choice1 = Value(choice1),
        choice2 = Value(choice2),
        choice3 = Value(choice3),
        explanation = Value(explanation);
  static Insertable<Question> custom({
    Expression<int>? id,
    Expression<String>? question,
    Expression<String>? answer,
    Expression<String>? choice1,
    Expression<String>? choice2,
    Expression<String>? choice3,
    Expression<String>? explanation,
    Expression<bool>? isCorrect,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (question != null) 'question': question,
      if (answer != null) 'answer': answer,
      if (choice1 != null) 'choice1': choice1,
      if (choice2 != null) 'choice2': choice2,
      if (choice3 != null) 'choice3': choice3,
      if (explanation != null) 'explanation': explanation,
      if (isCorrect != null) 'is_correct': isCorrect,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? question,
      Value<String>? answer,
      Value<String>? choice1,
      Value<String>? choice2,
      Value<String>? choice3,
      Value<String>? explanation,
      Value<bool>? isCorrect,
      Value<int>? rowid}) {
    return QuestionsCompanion(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      choice1: choice1 ?? this.choice1,
      choice2: choice2 ?? this.choice2,
      choice3: choice3 ?? this.choice3,
      explanation: explanation ?? this.explanation,
      isCorrect: isCorrect ?? this.isCorrect,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (choice1.present) {
      map['choice1'] = Variable<String>(choice1.value);
    }
    if (choice2.present) {
      map['choice2'] = Variable<String>(choice2.value);
    }
    if (choice3.present) {
      map['choice3'] = Variable<String>(choice3.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (isCorrect.present) {
      map['is_correct'] = Variable<bool>(isCorrect.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsCompanion(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('choice1: $choice1, ')
          ..write('choice2: $choice2, ')
          ..write('choice3: $choice3, ')
          ..write('explanation: $explanation, ')
          ..write('isCorrect: $isCorrect, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecordsTable extends Records with TableInfo<$RecordsTable, Record> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberOfQuestionMeta =
      const VerificationMeta('numberOfQuestion');
  @override
  late final GeneratedColumn<int> numberOfQuestion = GeneratedColumn<int>(
      'number_of_question', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _numberOfCorrectMeta =
      const VerificationMeta('numberOfCorrect');
  @override
  late final GeneratedColumn<int> numberOfCorrect = GeneratedColumn<int>(
      'number_of_correct', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _correctRateMeta =
      const VerificationMeta('correctRate');
  @override
  late final GeneratedColumn<int> correctRate = GeneratedColumn<int>(
      'correct_rate', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, date, numberOfQuestion, numberOfCorrect, correctRate];
  @override
  String get aliasedName => _alias ?? 'records';
  @override
  String get actualTableName => 'records';
  @override
  VerificationContext validateIntegrity(Insertable<Record> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('number_of_question')) {
      context.handle(
          _numberOfQuestionMeta,
          numberOfQuestion.isAcceptableOrUnknown(
              data['number_of_question']!, _numberOfQuestionMeta));
    } else if (isInserting) {
      context.missing(_numberOfQuestionMeta);
    }
    if (data.containsKey('number_of_correct')) {
      context.handle(
          _numberOfCorrectMeta,
          numberOfCorrect.isAcceptableOrUnknown(
              data['number_of_correct']!, _numberOfCorrectMeta));
    } else if (isInserting) {
      context.missing(_numberOfCorrectMeta);
    }
    if (data.containsKey('correct_rate')) {
      context.handle(
          _correctRateMeta,
          correctRate.isAcceptableOrUnknown(
              data['correct_rate']!, _correctRateMeta));
    } else if (isInserting) {
      context.missing(_correctRateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Record map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Record(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      numberOfQuestion: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}number_of_question'])!,
      numberOfCorrect: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_of_correct'])!,
      correctRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}correct_rate'])!,
    );
  }

  @override
  $RecordsTable createAlias(String alias) {
    return $RecordsTable(attachedDatabase, alias);
  }
}

class Record extends DataClass implements Insertable<Record> {
  final int id;
  final String date;
  final int numberOfQuestion;
  final int numberOfCorrect;
  final int correctRate;
  const Record(
      {required this.id,
      required this.date,
      required this.numberOfQuestion,
      required this.numberOfCorrect,
      required this.correctRate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<String>(date);
    map['number_of_question'] = Variable<int>(numberOfQuestion);
    map['number_of_correct'] = Variable<int>(numberOfCorrect);
    map['correct_rate'] = Variable<int>(correctRate);
    return map;
  }

  RecordsCompanion toCompanion(bool nullToAbsent) {
    return RecordsCompanion(
      id: Value(id),
      date: Value(date),
      numberOfQuestion: Value(numberOfQuestion),
      numberOfCorrect: Value(numberOfCorrect),
      correctRate: Value(correctRate),
    );
  }

  factory Record.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Record(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<String>(json['date']),
      numberOfQuestion: serializer.fromJson<int>(json['numberOfQuestion']),
      numberOfCorrect: serializer.fromJson<int>(json['numberOfCorrect']),
      correctRate: serializer.fromJson<int>(json['correctRate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<String>(date),
      'numberOfQuestion': serializer.toJson<int>(numberOfQuestion),
      'numberOfCorrect': serializer.toJson<int>(numberOfCorrect),
      'correctRate': serializer.toJson<int>(correctRate),
    };
  }

  Record copyWith(
          {int? id,
          String? date,
          int? numberOfQuestion,
          int? numberOfCorrect,
          int? correctRate}) =>
      Record(
        id: id ?? this.id,
        date: date ?? this.date,
        numberOfQuestion: numberOfQuestion ?? this.numberOfQuestion,
        numberOfCorrect: numberOfCorrect ?? this.numberOfCorrect,
        correctRate: correctRate ?? this.correctRate,
      );
  @override
  String toString() {
    return (StringBuffer('Record(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('numberOfQuestion: $numberOfQuestion, ')
          ..write('numberOfCorrect: $numberOfCorrect, ')
          ..write('correctRate: $correctRate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, date, numberOfQuestion, numberOfCorrect, correctRate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Record &&
          other.id == this.id &&
          other.date == this.date &&
          other.numberOfQuestion == this.numberOfQuestion &&
          other.numberOfCorrect == this.numberOfCorrect &&
          other.correctRate == this.correctRate);
}

class RecordsCompanion extends UpdateCompanion<Record> {
  final Value<int> id;
  final Value<String> date;
  final Value<int> numberOfQuestion;
  final Value<int> numberOfCorrect;
  final Value<int> correctRate;
  final Value<int> rowid;
  const RecordsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.numberOfQuestion = const Value.absent(),
    this.numberOfCorrect = const Value.absent(),
    this.correctRate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecordsCompanion.insert({
    required int id,
    required String date,
    required int numberOfQuestion,
    required int numberOfCorrect,
    required int correctRate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        date = Value(date),
        numberOfQuestion = Value(numberOfQuestion),
        numberOfCorrect = Value(numberOfCorrect),
        correctRate = Value(correctRate);
  static Insertable<Record> custom({
    Expression<int>? id,
    Expression<String>? date,
    Expression<int>? numberOfQuestion,
    Expression<int>? numberOfCorrect,
    Expression<int>? correctRate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (numberOfQuestion != null) 'number_of_question': numberOfQuestion,
      if (numberOfCorrect != null) 'number_of_correct': numberOfCorrect,
      if (correctRate != null) 'correct_rate': correctRate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? date,
      Value<int>? numberOfQuestion,
      Value<int>? numberOfCorrect,
      Value<int>? correctRate,
      Value<int>? rowid}) {
    return RecordsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      numberOfQuestion: numberOfQuestion ?? this.numberOfQuestion,
      numberOfCorrect: numberOfCorrect ?? this.numberOfCorrect,
      correctRate: correctRate ?? this.correctRate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (numberOfQuestion.present) {
      map['number_of_question'] = Variable<int>(numberOfQuestion.value);
    }
    if (numberOfCorrect.present) {
      map['number_of_correct'] = Variable<int>(numberOfCorrect.value);
    }
    if (correctRate.present) {
      map['correct_rate'] = Variable<int>(correctRate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('numberOfQuestion: $numberOfQuestion, ')
          ..write('numberOfCorrect: $numberOfCorrect, ')
          ..write('correctRate: $correctRate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $QuestionsTable questions = $QuestionsTable(this);
  late final $RecordsTable records = $RecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [questions, records];
}
