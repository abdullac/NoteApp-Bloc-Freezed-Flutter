// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_listview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemsListviewEvent {
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
abstract class $ItemsListviewEventCopyWith<$Res> {
  factory $ItemsListviewEventCopyWith(
          ItemsListviewEvent value, $Res Function(ItemsListviewEvent) then) =
      _$ItemsListviewEventCopyWithImpl<$Res, ItemsListviewEvent>;
}

/// @nodoc
class _$ItemsListviewEventCopyWithImpl<$Res, $Val extends ItemsListviewEvent>
    implements $ItemsListviewEventCopyWith<$Res> {
  _$ItemsListviewEventCopyWithImpl(this._value, this._then);

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
    extends _$ItemsListviewEventCopyWithImpl<$Res, _$InitialList>
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
    return 'ItemsListviewEvent.initialList()';
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

abstract class InitialList implements ItemsListviewEvent {
  const factory InitialList() = _$InitialList;
}

/// @nodoc
mixin _$ItemsListviewState {
  List<NoteItemModel> get noteItemModelList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsListviewStateCopyWith<ItemsListviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsListviewStateCopyWith<$Res> {
  factory $ItemsListviewStateCopyWith(
          ItemsListviewState value, $Res Function(ItemsListviewState) then) =
      _$ItemsListviewStateCopyWithImpl<$Res, ItemsListviewState>;
  @useResult
  $Res call({List<NoteItemModel> noteItemModelList});
}

/// @nodoc
class _$ItemsListviewStateCopyWithImpl<$Res, $Val extends ItemsListviewState>
    implements $ItemsListviewStateCopyWith<$Res> {
  _$ItemsListviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteItemModelList = null,
  }) {
    return _then(_value.copyWith(
      noteItemModelList: null == noteItemModelList
          ? _value.noteItemModelList
          : noteItemModelList // ignore: cast_nullable_to_non_nullable
              as List<NoteItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemsListviewStateCopyWith<$Res>
    implements $ItemsListviewStateCopyWith<$Res> {
  factory _$$_ItemsListviewStateCopyWith(_$_ItemsListviewState value,
          $Res Function(_$_ItemsListviewState) then) =
      __$$_ItemsListviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteItemModel> noteItemModelList});
}

/// @nodoc
class __$$_ItemsListviewStateCopyWithImpl<$Res>
    extends _$ItemsListviewStateCopyWithImpl<$Res, _$_ItemsListviewState>
    implements _$$_ItemsListviewStateCopyWith<$Res> {
  __$$_ItemsListviewStateCopyWithImpl(
      _$_ItemsListviewState _value, $Res Function(_$_ItemsListviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteItemModelList = null,
  }) {
    return _then(_$_ItemsListviewState(
      noteItemModelList: null == noteItemModelList
          ? _value._noteItemModelList
          : noteItemModelList // ignore: cast_nullable_to_non_nullable
              as List<NoteItemModel>,
    ));
  }
}

/// @nodoc

class _$_ItemsListviewState implements _ItemsListviewState {
  const _$_ItemsListviewState(
      {required final List<NoteItemModel> noteItemModelList})
      : _noteItemModelList = noteItemModelList;

  final List<NoteItemModel> _noteItemModelList;
  @override
  List<NoteItemModel> get noteItemModelList {
    if (_noteItemModelList is EqualUnmodifiableListView)
      return _noteItemModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noteItemModelList);
  }

  @override
  String toString() {
    return 'ItemsListviewState(noteItemModelList: $noteItemModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsListviewState &&
            const DeepCollectionEquality()
                .equals(other._noteItemModelList, _noteItemModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_noteItemModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsListviewStateCopyWith<_$_ItemsListviewState> get copyWith =>
      __$$_ItemsListviewStateCopyWithImpl<_$_ItemsListviewState>(
          this, _$identity);
}

abstract class _ItemsListviewState implements ItemsListviewState {
  const factory _ItemsListviewState(
          {required final List<NoteItemModel> noteItemModelList}) =
      _$_ItemsListviewState;

  @override
  List<NoteItemModel> get noteItemModelList;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsListviewStateCopyWith<_$_ItemsListviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
