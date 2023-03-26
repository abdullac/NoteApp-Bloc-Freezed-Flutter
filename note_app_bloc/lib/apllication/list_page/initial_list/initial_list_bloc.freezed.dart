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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialList,
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
}

/// @nodoc
abstract class $InitialListEventCopyWith<$Res> {
  factory $InitialListEventCopyWith(
          InitialListEvent value, $Res Function(InitialListEvent) then) =
      _$InitialListEventCopyWithImpl<$Res, InitialListEvent>;
}

/// @nodoc
class _$InitialListEventCopyWithImpl<$Res, $Val extends InitialListEvent>
    implements $InitialListEventCopyWith<$Res> {
  _$InitialListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialListCopyWith<$Res> {
  factory _$$InitialListCopyWith(
          _$InitialList value, $Res Function(_$InitialList) then) =
      __$$InitialListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialListCopyWithImpl<$Res>
    extends _$InitialListEventCopyWithImpl<$Res, _$InitialList>
    implements _$$InitialListCopyWith<$Res> {
  __$$InitialListCopyWithImpl(
      _$InitialList _value, $Res Function(_$InitialList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialList implements InitialList {
  const _$InitialList();

  @override
  String toString() {
    return 'InitialListEvent.initialList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialList,
  }) {
    return initialList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialList,
  }) {
    return initialList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialList,
    required TResult orElse(),
  }) {
    if (initialList != null) {
      return initialList();
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
  const factory InitialList() = _$InitialList;
}

/// @nodoc
mixin _$InitialListState {
  List<InitialListModel> get initialListModelList =>
      throw _privateConstructorUsedError;

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
  $Res call({List<InitialListModel> initialListModelList});
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
    Object? initialListModelList = null,
  }) {
    return _then(_value.copyWith(
      initialListModelList: null == initialListModelList
          ? _value.initialListModelList
          : initialListModelList // ignore: cast_nullable_to_non_nullable
              as List<InitialListModel>,
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
  $Res call({List<InitialListModel> initialListModelList});
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
    Object? initialListModelList = null,
  }) {
    return _then(_$_InitialListState(
      initialListModelList: null == initialListModelList
          ? _value._initialListModelList
          : initialListModelList // ignore: cast_nullable_to_non_nullable
              as List<InitialListModel>,
    ));
  }
}

/// @nodoc

class _$_InitialListState implements _InitialListState {
  const _$_InitialListState(
      {required final List<InitialListModel> initialListModelList})
      : _initialListModelList = initialListModelList;

  final List<InitialListModel> _initialListModelList;
  @override
  List<InitialListModel> get initialListModelList {
    if (_initialListModelList is EqualUnmodifiableListView)
      return _initialListModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialListModelList);
  }

  @override
  String toString() {
    return 'InitialListState(initialListModelList: $initialListModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialListState &&
            const DeepCollectionEquality()
                .equals(other._initialListModelList, _initialListModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_initialListModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialListStateCopyWith<_$_InitialListState> get copyWith =>
      __$$_InitialListStateCopyWithImpl<_$_InitialListState>(this, _$identity);
}

abstract class _InitialListState implements InitialListState {
  const factory _InitialListState(
          {required final List<InitialListModel> initialListModelList}) =
      _$_InitialListState;

  @override
  List<InitialListModel> get initialListModelList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialListStateCopyWith<_$_InitialListState> get copyWith =>
      throw _privateConstructorUsedError;
}
