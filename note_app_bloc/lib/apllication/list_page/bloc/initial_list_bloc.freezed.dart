// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitialListEvent {
  InitialListModel get initialListModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitialListModel initialListModel) initialList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitialListModel initialListModel)? initialList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitialListModel initialListModel)? initialList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialList value) initialList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialList value)? initialList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialList value)? initialList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialListEventCopyWith<InitialListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialListEventCopyWith<$Res> {
  factory $InitialListEventCopyWith(
          InitialListEvent value, $Res Function(InitialListEvent) then) =
      _$InitialListEventCopyWithImpl<$Res, InitialListEvent>;
  @useResult
  $Res call({InitialListModel initialListModel});

  $InitialListModelCopyWith<$Res> get initialListModel;
}

/// @nodoc
class _$InitialListEventCopyWithImpl<$Res, $Val extends InitialListEvent>
    implements $InitialListEventCopyWith<$Res> {
  _$InitialListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialListModel = null,
  }) {
    return _then(_value.copyWith(
      initialListModel: null == initialListModel
          ? _value.initialListModel
          : initialListModel // ignore: cast_nullable_to_non_nullable
              as InitialListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InitialListModelCopyWith<$Res> get initialListModel {
    return $InitialListModelCopyWith<$Res>(_value.initialListModel, (value) {
      return _then(_value.copyWith(initialListModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialListCopyWith<$Res>
    implements $InitialListEventCopyWith<$Res> {
  factory _$$InitialListCopyWith(
          _$InitialList value, $Res Function(_$InitialList) then) =
      __$$InitialListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InitialListModel initialListModel});

  @override
  $InitialListModelCopyWith<$Res> get initialListModel;
}

/// @nodoc
class __$$InitialListCopyWithImpl<$Res>
    extends _$InitialListEventCopyWithImpl<$Res, _$InitialList>
    implements _$$InitialListCopyWith<$Res> {
  __$$InitialListCopyWithImpl(
      _$InitialList _value, $Res Function(_$InitialList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialListModel = null,
  }) {
    return _then(_$InitialList(
      initialListModel: null == initialListModel
          ? _value.initialListModel
          : initialListModel // ignore: cast_nullable_to_non_nullable
              as InitialListModel,
    ));
  }
}

/// @nodoc

class _$InitialList implements InitialList {
  const _$InitialList({required this.initialListModel});

  @override
  final InitialListModel initialListModel;

  @override
  String toString() {
    return 'InitialListEvent.initialList(initialListModel: $initialListModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialList &&
            (identical(other.initialListModel, initialListModel) ||
                other.initialListModel == initialListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialListCopyWith<_$InitialList> get copyWith =>
      __$$InitialListCopyWithImpl<_$InitialList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitialListModel initialListModel) initialList,
  }) {
    return initialList(initialListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitialListModel initialListModel)? initialList,
  }) {
    return initialList?.call(initialListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitialListModel initialListModel)? initialList,
    required TResult orElse(),
  }) {
    if (initialList != null) {
      return initialList(initialListModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialList value) initialList,
  }) {
    return initialList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialList value)? initialList,
  }) {
    return initialList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialList value)? initialList,
    required TResult orElse(),
  }) {
    if (initialList != null) {
      return initialList(this);
    }
    return orElse();
  }
}

abstract class InitialList implements InitialListEvent {
  const factory InitialList(
      {required final InitialListModel initialListModel}) = _$InitialList;

  @override
  InitialListModel get initialListModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialListCopyWith<_$InitialList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitialListState {
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialListStateCopyWith<InitialListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialListStateCopyWith<$Res> {
  factory $InitialListStateCopyWith(
          InitialListState value, $Res Function(InitialListState) then) =
      _$InitialListStateCopyWithImpl<$Res, InitialListState>;
  @useResult
  $Res call({String date, String title, String description});
}

/// @nodoc
class _$InitialListStateCopyWithImpl<$Res, $Val extends InitialListState>
    implements $InitialListStateCopyWith<$Res> {
  _$InitialListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialListStateCopyWith<$Res>
    implements $InitialListStateCopyWith<$Res> {
  factory _$$_InitialListStateCopyWith(
          _$_InitialListState value, $Res Function(_$_InitialListState) then) =
      __$$_InitialListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String title, String description});
}

/// @nodoc
class __$$_InitialListStateCopyWithImpl<$Res>
    extends _$InitialListStateCopyWithImpl<$Res, _$_InitialListState>
    implements _$$_InitialListStateCopyWith<$Res> {
  __$$_InitialListStateCopyWithImpl(
      _$_InitialListState _value, $Res Function(_$_InitialListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_InitialListState(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialListState implements _InitialListState {
  const _$_InitialListState(
      {required this.date, required this.title, required this.description});

  @override
  final String date;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'InitialListState(date: $date, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialListState &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialListStateCopyWith<_$_InitialListState> get copyWith =>
      __$$_InitialListStateCopyWithImpl<_$_InitialListState>(this, _$identity);
}

abstract class _InitialListState implements InitialListState {
  const factory _InitialListState(
      {required final String date,
      required final String title,
      required final String description}) = _$_InitialListState;

  @override
  String get date;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_InitialListStateCopyWith<_$_InitialListState> get copyWith =>
      throw _privateConstructorUsedError;
}
