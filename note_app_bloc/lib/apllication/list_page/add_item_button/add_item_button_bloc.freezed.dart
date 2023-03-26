// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_item_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddItemButtonEvent {
  bool get isAdd => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdd) gotoAddPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdd)? gotoAddPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdd)? gotoAddPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoAddPage value) gotoAddPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoAddPage value)? gotoAddPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoAddPage value)? gotoAddPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddItemButtonEventCopyWith<AddItemButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemButtonEventCopyWith<$Res> {
  factory $AddItemButtonEventCopyWith(
          AddItemButtonEvent value, $Res Function(AddItemButtonEvent) then) =
      _$AddItemButtonEventCopyWithImpl<$Res, AddItemButtonEvent>;
  @useResult
  $Res call({bool isAdd});
}

/// @nodoc
class _$AddItemButtonEventCopyWithImpl<$Res, $Val extends AddItemButtonEvent>
    implements $AddItemButtonEventCopyWith<$Res> {
  _$AddItemButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdd = null,
  }) {
    return _then(_value.copyWith(
      isAdd: null == isAdd
          ? _value.isAdd
          : isAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GotoAddPageCopyWith<$Res>
    implements $AddItemButtonEventCopyWith<$Res> {
  factory _$$GotoAddPageCopyWith(
          _$GotoAddPage value, $Res Function(_$GotoAddPage) then) =
      __$$GotoAddPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAdd});
}

/// @nodoc
class __$$GotoAddPageCopyWithImpl<$Res>
    extends _$AddItemButtonEventCopyWithImpl<$Res, _$GotoAddPage>
    implements _$$GotoAddPageCopyWith<$Res> {
  __$$GotoAddPageCopyWithImpl(
      _$GotoAddPage _value, $Res Function(_$GotoAddPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdd = null,
  }) {
    return _then(_$GotoAddPage(
      isAdd: null == isAdd
          ? _value.isAdd
          : isAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GotoAddPage implements GotoAddPage {
  const _$GotoAddPage({required this.isAdd});

  @override
  final bool isAdd;

  @override
  String toString() {
    return 'AddItemButtonEvent.gotoAddPage(isAdd: $isAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoAddPage &&
            (identical(other.isAdd, isAdd) || other.isAdd == isAdd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoAddPageCopyWith<_$GotoAddPage> get copyWith =>
      __$$GotoAddPageCopyWithImpl<_$GotoAddPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdd) gotoAddPage,
  }) {
    return gotoAddPage(isAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdd)? gotoAddPage,
  }) {
    return gotoAddPage?.call(isAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdd)? gotoAddPage,
    required TResult orElse(),
  }) {
    if (gotoAddPage != null) {
      return gotoAddPage(isAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoAddPage value) gotoAddPage,
  }) {
    return gotoAddPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoAddPage value)? gotoAddPage,
  }) {
    return gotoAddPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoAddPage value)? gotoAddPage,
    required TResult orElse(),
  }) {
    if (gotoAddPage != null) {
      return gotoAddPage(this);
    }
    return orElse();
  }
}

abstract class GotoAddPage implements AddItemButtonEvent {
  const factory GotoAddPage({required final bool isAdd}) = _$GotoAddPage;

  @override
  bool get isAdd;
  @override
  @JsonKey(ignore: true)
  _$$GotoAddPageCopyWith<_$GotoAddPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddItemButtonState {
  Widget? get addOrUpdateWidget => throw _privateConstructorUsedError;
  bool get isAdd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddItemButtonStateCopyWith<AddItemButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemButtonStateCopyWith<$Res> {
  factory $AddItemButtonStateCopyWith(
          AddItemButtonState value, $Res Function(AddItemButtonState) then) =
      _$AddItemButtonStateCopyWithImpl<$Res, AddItemButtonState>;
  @useResult
  $Res call({Widget? addOrUpdateWidget, bool isAdd});
}

/// @nodoc
class _$AddItemButtonStateCopyWithImpl<$Res, $Val extends AddItemButtonState>
    implements $AddItemButtonStateCopyWith<$Res> {
  _$AddItemButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addOrUpdateWidget = freezed,
    Object? isAdd = null,
  }) {
    return _then(_value.copyWith(
      addOrUpdateWidget: freezed == addOrUpdateWidget
          ? _value.addOrUpdateWidget
          : addOrUpdateWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      isAdd: null == isAdd
          ? _value.isAdd
          : isAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddItemButtonStateCopyWith<$Res>
    implements $AddItemButtonStateCopyWith<$Res> {
  factory _$$_AddItemButtonStateCopyWith(_$_AddItemButtonState value,
          $Res Function(_$_AddItemButtonState) then) =
      __$$_AddItemButtonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget? addOrUpdateWidget, bool isAdd});
}

/// @nodoc
class __$$_AddItemButtonStateCopyWithImpl<$Res>
    extends _$AddItemButtonStateCopyWithImpl<$Res, _$_AddItemButtonState>
    implements _$$_AddItemButtonStateCopyWith<$Res> {
  __$$_AddItemButtonStateCopyWithImpl(
      _$_AddItemButtonState _value, $Res Function(_$_AddItemButtonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addOrUpdateWidget = freezed,
    Object? isAdd = null,
  }) {
    return _then(_$_AddItemButtonState(
      addOrUpdateWidget: freezed == addOrUpdateWidget
          ? _value.addOrUpdateWidget
          : addOrUpdateWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      isAdd: null == isAdd
          ? _value.isAdd
          : isAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddItemButtonState implements _AddItemButtonState {
  const _$_AddItemButtonState(
      {required this.addOrUpdateWidget, required this.isAdd});

  @override
  final Widget? addOrUpdateWidget;
  @override
  final bool isAdd;

  @override
  String toString() {
    return 'AddItemButtonState(addOrUpdateWidget: $addOrUpdateWidget, isAdd: $isAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemButtonState &&
            (identical(other.addOrUpdateWidget, addOrUpdateWidget) ||
                other.addOrUpdateWidget == addOrUpdateWidget) &&
            (identical(other.isAdd, isAdd) || other.isAdd == isAdd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addOrUpdateWidget, isAdd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddItemButtonStateCopyWith<_$_AddItemButtonState> get copyWith =>
      __$$_AddItemButtonStateCopyWithImpl<_$_AddItemButtonState>(
          this, _$identity);
}

abstract class _AddItemButtonState implements AddItemButtonState {
  const factory _AddItemButtonState(
      {required final Widget? addOrUpdateWidget,
      required final bool isAdd}) = _$_AddItemButtonState;

  @override
  Widget? get addOrUpdateWidget;
  @override
  bool get isAdd;
  @override
  @JsonKey(ignore: true)
  _$$_AddItemButtonStateCopyWith<_$_AddItemButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}
