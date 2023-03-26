// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitialListModel {
  @HiveField(0)
  int get noteId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get noteDate => throw _privateConstructorUsedError;
  @HiveField(2)
  String get noteTitle => throw _privateConstructorUsedError;
  @HiveField(3)
  String get noteDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialListModelCopyWith<InitialListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialListModelCopyWith<$Res> {
  factory $InitialListModelCopyWith(
          InitialListModel value, $Res Function(InitialListModel) then) =
      _$InitialListModelCopyWithImpl<$Res, InitialListModel>;
  @useResult
  $Res call(
      {@HiveField(0) int noteId,
      @HiveField(1) String noteDate,
      @HiveField(2) String noteTitle,
      @HiveField(3) String noteDescription});
}

/// @nodoc
class _$InitialListModelCopyWithImpl<$Res, $Val extends InitialListModel>
    implements $InitialListModelCopyWith<$Res> {
  _$InitialListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
    Object? noteDate = null,
    Object? noteTitle = null,
    Object? noteDescription = null,
  }) {
    return _then(_value.copyWith(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as int,
      noteDate: null == noteDate
          ? _value.noteDate
          : noteDate // ignore: cast_nullable_to_non_nullable
              as String,
      noteTitle: null == noteTitle
          ? _value.noteTitle
          : noteTitle // ignore: cast_nullable_to_non_nullable
              as String,
      noteDescription: null == noteDescription
          ? _value.noteDescription
          : noteDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialListModelCopyWith<$Res>
    implements $InitialListModelCopyWith<$Res> {
  factory _$$_InitialListModelCopyWith(
          _$_InitialListModel value, $Res Function(_$_InitialListModel) then) =
      __$$_InitialListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int noteId,
      @HiveField(1) String noteDate,
      @HiveField(2) String noteTitle,
      @HiveField(3) String noteDescription});
}

/// @nodoc
class __$$_InitialListModelCopyWithImpl<$Res>
    extends _$InitialListModelCopyWithImpl<$Res, _$_InitialListModel>
    implements _$$_InitialListModelCopyWith<$Res> {
  __$$_InitialListModelCopyWithImpl(
      _$_InitialListModel _value, $Res Function(_$_InitialListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
    Object? noteDate = null,
    Object? noteTitle = null,
    Object? noteDescription = null,
  }) {
    return _then(_$_InitialListModel(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as int,
      noteDate: null == noteDate
          ? _value.noteDate
          : noteDate // ignore: cast_nullable_to_non_nullable
              as String,
      noteTitle: null == noteTitle
          ? _value.noteTitle
          : noteTitle // ignore: cast_nullable_to_non_nullable
              as String,
      noteDescription: null == noteDescription
          ? _value.noteDescription
          : noteDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialListModel implements _InitialListModel {
  const _$_InitialListModel(
      {@HiveField(0) required this.noteId,
      @HiveField(1) required this.noteDate,
      @HiveField(2) required this.noteTitle,
      @HiveField(3) required this.noteDescription});

  @override
  @HiveField(0)
  final int noteId;
  @override
  @HiveField(1)
  final String noteDate;
  @override
  @HiveField(2)
  final String noteTitle;
  @override
  @HiveField(3)
  final String noteDescription;

  @override
  String toString() {
    return 'InitialListModel(noteId: $noteId, noteDate: $noteDate, noteTitle: $noteTitle, noteDescription: $noteDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialListModel &&
            (identical(other.noteId, noteId) || other.noteId == noteId) &&
            (identical(other.noteDate, noteDate) ||
                other.noteDate == noteDate) &&
            (identical(other.noteTitle, noteTitle) ||
                other.noteTitle == noteTitle) &&
            (identical(other.noteDescription, noteDescription) ||
                other.noteDescription == noteDescription));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, noteId, noteDate, noteTitle, noteDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialListModelCopyWith<_$_InitialListModel> get copyWith =>
      __$$_InitialListModelCopyWithImpl<_$_InitialListModel>(this, _$identity);
}

abstract class _InitialListModel implements InitialListModel {
  const factory _InitialListModel(
          {@HiveField(0) required final int noteId,
          @HiveField(1) required final String noteDate,
          @HiveField(2) required final String noteTitle,
          @HiveField(3) required final String noteDescription}) =
      _$_InitialListModel;

  @override
  @HiveField(0)
  int get noteId;
  @override
  @HiveField(1)
  String get noteDate;
  @override
  @HiveField(2)
  String get noteTitle;
  @override
  @HiveField(3)
  String get noteDescription;
  @override
  @JsonKey(ignore: true)
  _$$_InitialListModelCopyWith<_$_InitialListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
