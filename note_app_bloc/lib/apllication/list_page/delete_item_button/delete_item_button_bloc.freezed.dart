// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_item_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteItemButtonEvent {
  int get deleteId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deleteId) deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deleteId)? deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deleteId)? deleteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteItem value) deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteItem value)? deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteItemButtonEventCopyWith<DeleteItemButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteItemButtonEventCopyWith<$Res> {
  factory $DeleteItemButtonEventCopyWith(DeleteItemButtonEvent value,
          $Res Function(DeleteItemButtonEvent) then) =
      _$DeleteItemButtonEventCopyWithImpl<$Res, DeleteItemButtonEvent>;
  @useResult
  $Res call({int deleteId});
}

/// @nodoc
class _$DeleteItemButtonEventCopyWithImpl<$Res,
        $Val extends DeleteItemButtonEvent>
    implements $DeleteItemButtonEventCopyWith<$Res> {
  _$DeleteItemButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteId = null,
  }) {
    return _then(_value.copyWith(
      deleteId: null == deleteId
          ? _value.deleteId
          : deleteId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteItemCopyWith<$Res>
    implements $DeleteItemButtonEventCopyWith<$Res> {
  factory _$$DeleteItemCopyWith(
          _$DeleteItem value, $Res Function(_$DeleteItem) then) =
      __$$DeleteItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int deleteId});
}

/// @nodoc
class __$$DeleteItemCopyWithImpl<$Res>
    extends _$DeleteItemButtonEventCopyWithImpl<$Res, _$DeleteItem>
    implements _$$DeleteItemCopyWith<$Res> {
  __$$DeleteItemCopyWithImpl(
      _$DeleteItem _value, $Res Function(_$DeleteItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteId = null,
  }) {
    return _then(_$DeleteItem(
      deleteId: null == deleteId
          ? _value.deleteId
          : deleteId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteItem implements DeleteItem {
  const _$DeleteItem({required this.deleteId});

  @override
  final int deleteId;

  @override
  String toString() {
    return 'DeleteItemButtonEvent.deleteItem(deleteId: $deleteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItem &&
            (identical(other.deleteId, deleteId) ||
                other.deleteId == deleteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItemCopyWith<_$DeleteItem> get copyWith =>
      __$$DeleteItemCopyWithImpl<_$DeleteItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deleteId) deleteItem,
  }) {
    return deleteItem(deleteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deleteId)? deleteItem,
  }) {
    return deleteItem?.call(deleteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deleteId)? deleteItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(deleteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteItem value) deleteItem,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteItem value)? deleteItem,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class DeleteItem implements DeleteItemButtonEvent {
  const factory DeleteItem({required final int deleteId}) = _$DeleteItem;

  @override
  int get deleteId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteItemCopyWith<_$DeleteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteItemButtonState {}

/// @nodoc
abstract class $DeleteItemButtonStateCopyWith<$Res> {
  factory $DeleteItemButtonStateCopyWith(DeleteItemButtonState value,
          $Res Function(DeleteItemButtonState) then) =
      _$DeleteItemButtonStateCopyWithImpl<$Res, DeleteItemButtonState>;
}

/// @nodoc
class _$DeleteItemButtonStateCopyWithImpl<$Res,
        $Val extends DeleteItemButtonState>
    implements $DeleteItemButtonStateCopyWith<$Res> {
  _$DeleteItemButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DeleteItemButtonStateCopyWith<$Res> {
  factory _$$_DeleteItemButtonStateCopyWith(_$_DeleteItemButtonState value,
          $Res Function(_$_DeleteItemButtonState) then) =
      __$$_DeleteItemButtonStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteItemButtonStateCopyWithImpl<$Res>
    extends _$DeleteItemButtonStateCopyWithImpl<$Res, _$_DeleteItemButtonState>
    implements _$$_DeleteItemButtonStateCopyWith<$Res> {
  __$$_DeleteItemButtonStateCopyWithImpl(_$_DeleteItemButtonState _value,
      $Res Function(_$_DeleteItemButtonState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteItemButtonState implements _DeleteItemButtonState {
  const _$_DeleteItemButtonState();

  @override
  String toString() {
    return 'DeleteItemButtonState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteItemButtonState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _DeleteItemButtonState implements DeleteItemButtonState {
  const factory _DeleteItemButtonState() = _$_DeleteItemButtonState;
}
