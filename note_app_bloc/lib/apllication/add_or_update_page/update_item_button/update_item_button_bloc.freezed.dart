// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_item_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateItemButtonEvent {
  NoteItemModel get noteItemModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteItemModel noteItemModel) updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteItemModel noteItemModel)? updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteItemModel noteItemModel)? updateItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateItem value) updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateItem value)? updateItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateItem value)? updateItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateItemButtonEventCopyWith<UpdateItemButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateItemButtonEventCopyWith<$Res> {
  factory $UpdateItemButtonEventCopyWith(UpdateItemButtonEvent value,
          $Res Function(UpdateItemButtonEvent) then) =
      _$UpdateItemButtonEventCopyWithImpl<$Res, UpdateItemButtonEvent>;
  @useResult
  $Res call({NoteItemModel noteItemModel});

  $NoteItemModelCopyWith<$Res> get noteItemModel;
}

/// @nodoc
class _$UpdateItemButtonEventCopyWithImpl<$Res,
        $Val extends UpdateItemButtonEvent>
    implements $UpdateItemButtonEventCopyWith<$Res> {
  _$UpdateItemButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteItemModel = null,
  }) {
    return _then(_value.copyWith(
      noteItemModel: null == noteItemModel
          ? _value.noteItemModel
          : noteItemModel // ignore: cast_nullable_to_non_nullable
              as NoteItemModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteItemModelCopyWith<$Res> get noteItemModel {
    return $NoteItemModelCopyWith<$Res>(_value.noteItemModel, (value) {
      return _then(_value.copyWith(noteItemModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateItemCopyWith<$Res>
    implements $UpdateItemButtonEventCopyWith<$Res> {
  factory _$$UpdateItemCopyWith(
          _$UpdateItem value, $Res Function(_$UpdateItem) then) =
      __$$UpdateItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoteItemModel noteItemModel});

  @override
  $NoteItemModelCopyWith<$Res> get noteItemModel;
}

/// @nodoc
class __$$UpdateItemCopyWithImpl<$Res>
    extends _$UpdateItemButtonEventCopyWithImpl<$Res, _$UpdateItem>
    implements _$$UpdateItemCopyWith<$Res> {
  __$$UpdateItemCopyWithImpl(
      _$UpdateItem _value, $Res Function(_$UpdateItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteItemModel = null,
  }) {
    return _then(_$UpdateItem(
      noteItemModel: null == noteItemModel
          ? _value.noteItemModel
          : noteItemModel // ignore: cast_nullable_to_non_nullable
              as NoteItemModel,
    ));
  }
}

/// @nodoc

class _$UpdateItem implements UpdateItem {
  const _$UpdateItem({required this.noteItemModel});

  @override
  final NoteItemModel noteItemModel;

  @override
  String toString() {
    return 'UpdateItemButtonEvent.updateItem(noteItemModel: $noteItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItem &&
            (identical(other.noteItemModel, noteItemModel) ||
                other.noteItemModel == noteItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItemCopyWith<_$UpdateItem> get copyWith =>
      __$$UpdateItemCopyWithImpl<_$UpdateItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteItemModel noteItemModel) updateItem,
  }) {
    return updateItem(noteItemModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteItemModel noteItemModel)? updateItem,
  }) {
    return updateItem?.call(noteItemModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteItemModel noteItemModel)? updateItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(noteItemModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateItem value) updateItem,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateItem value)? updateItem,
  }) {
    return updateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateItem value)? updateItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class UpdateItem implements UpdateItemButtonEvent {
  const factory UpdateItem({required final NoteItemModel noteItemModel}) =
      _$UpdateItem;

  @override
  NoteItemModel get noteItemModel;
  @override
  @JsonKey(ignore: true)
  _$$UpdateItemCopyWith<_$UpdateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateItemButtonState {}

/// @nodoc
abstract class $UpdateItemButtonStateCopyWith<$Res> {
  factory $UpdateItemButtonStateCopyWith(UpdateItemButtonState value,
          $Res Function(UpdateItemButtonState) then) =
      _$UpdateItemButtonStateCopyWithImpl<$Res, UpdateItemButtonState>;
}

/// @nodoc
class _$UpdateItemButtonStateCopyWithImpl<$Res,
        $Val extends UpdateItemButtonState>
    implements $UpdateItemButtonStateCopyWith<$Res> {
  _$UpdateItemButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateItemButtonStateCopyWith<$Res> {
  factory _$$_UpdateItemButtonStateCopyWith(_$_UpdateItemButtonState value,
          $Res Function(_$_UpdateItemButtonState) then) =
      __$$_UpdateItemButtonStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateItemButtonStateCopyWithImpl<$Res>
    extends _$UpdateItemButtonStateCopyWithImpl<$Res, _$_UpdateItemButtonState>
    implements _$$_UpdateItemButtonStateCopyWith<$Res> {
  __$$_UpdateItemButtonStateCopyWithImpl(_$_UpdateItemButtonState _value,
      $Res Function(_$_UpdateItemButtonState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateItemButtonState implements _UpdateItemButtonState {
  const _$_UpdateItemButtonState();

  @override
  String toString() {
    return 'UpdateItemButtonState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateItemButtonState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UpdateItemButtonState implements UpdateItemButtonState {
  const factory _UpdateItemButtonState() = _$_UpdateItemButtonState;
}
