// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_item_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveItemButtonEvent {
  NoteItemModel get noteItemModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteItemModel noteItemModel) saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteItemModel noteItemModel)? saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteItemModel noteItemModel)? saveItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveItem value) saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveItem value)? saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveItem value)? saveItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveItemButtonEventCopyWith<SaveItemButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveItemButtonEventCopyWith<$Res> {
  factory $SaveItemButtonEventCopyWith(
          SaveItemButtonEvent value, $Res Function(SaveItemButtonEvent) then) =
      _$SaveItemButtonEventCopyWithImpl<$Res, SaveItemButtonEvent>;
  @useResult
  $Res call({NoteItemModel noteItemModel});

  $NoteItemModelCopyWith<$Res> get noteItemModel;
}

/// @nodoc
class _$SaveItemButtonEventCopyWithImpl<$Res, $Val extends SaveItemButtonEvent>
    implements $SaveItemButtonEventCopyWith<$Res> {
  _$SaveItemButtonEventCopyWithImpl(this._value, this._then);

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
abstract class _$$SaveItemCopyWith<$Res>
    implements $SaveItemButtonEventCopyWith<$Res> {
  factory _$$SaveItemCopyWith(
          _$SaveItem value, $Res Function(_$SaveItem) then) =
      __$$SaveItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoteItemModel noteItemModel});

  @override
  $NoteItemModelCopyWith<$Res> get noteItemModel;
}

/// @nodoc
class __$$SaveItemCopyWithImpl<$Res>
    extends _$SaveItemButtonEventCopyWithImpl<$Res, _$SaveItem>
    implements _$$SaveItemCopyWith<$Res> {
  __$$SaveItemCopyWithImpl(_$SaveItem _value, $Res Function(_$SaveItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteItemModel = null,
  }) {
    return _then(_$SaveItem(
      noteItemModel: null == noteItemModel
          ? _value.noteItemModel
          : noteItemModel // ignore: cast_nullable_to_non_nullable
              as NoteItemModel,
    ));
  }
}

/// @nodoc

class _$SaveItem implements SaveItem {
  const _$SaveItem({required this.noteItemModel});

  @override
  final NoteItemModel noteItemModel;

  @override
  String toString() {
    return 'SaveItemButtonEvent.saveItem(noteItemModel: $noteItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveItem &&
            (identical(other.noteItemModel, noteItemModel) ||
                other.noteItemModel == noteItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveItemCopyWith<_$SaveItem> get copyWith =>
      __$$SaveItemCopyWithImpl<_$SaveItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteItemModel noteItemModel) saveItem,
  }) {
    return saveItem(noteItemModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteItemModel noteItemModel)? saveItem,
  }) {
    return saveItem?.call(noteItemModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteItemModel noteItemModel)? saveItem,
    required TResult orElse(),
  }) {
    if (saveItem != null) {
      return saveItem(noteItemModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveItem value) saveItem,
  }) {
    return saveItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveItem value)? saveItem,
  }) {
    return saveItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveItem value)? saveItem,
    required TResult orElse(),
  }) {
    if (saveItem != null) {
      return saveItem(this);
    }
    return orElse();
  }
}

abstract class SaveItem implements SaveItemButtonEvent {
  const factory SaveItem({required final NoteItemModel noteItemModel}) =
      _$SaveItem;

  @override
  NoteItemModel get noteItemModel;
  @override
  @JsonKey(ignore: true)
  _$$SaveItemCopyWith<_$SaveItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaveItemButtonState {}

/// @nodoc
abstract class $SaveItemButtonStateCopyWith<$Res> {
  factory $SaveItemButtonStateCopyWith(
          SaveItemButtonState value, $Res Function(SaveItemButtonState) then) =
      _$SaveItemButtonStateCopyWithImpl<$Res, SaveItemButtonState>;
}

/// @nodoc
class _$SaveItemButtonStateCopyWithImpl<$Res, $Val extends SaveItemButtonState>
    implements $SaveItemButtonStateCopyWith<$Res> {
  _$SaveItemButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveItemButtonStateCopyWith<$Res> {
  factory _$$_SaveItemButtonStateCopyWith(_$_SaveItemButtonState value,
          $Res Function(_$_SaveItemButtonState) then) =
      __$$_SaveItemButtonStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveItemButtonStateCopyWithImpl<$Res>
    extends _$SaveItemButtonStateCopyWithImpl<$Res, _$_SaveItemButtonState>
    implements _$$_SaveItemButtonStateCopyWith<$Res> {
  __$$_SaveItemButtonStateCopyWithImpl(_$_SaveItemButtonState _value,
      $Res Function(_$_SaveItemButtonState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveItemButtonState implements _SaveItemButtonState {
  const _$_SaveItemButtonState();

  @override
  String toString() {
    return 'SaveItemButtonState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveItemButtonState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SaveItemButtonState implements SaveItemButtonState {
  const factory _SaveItemButtonState() = _$_SaveItemButtonState;
}
