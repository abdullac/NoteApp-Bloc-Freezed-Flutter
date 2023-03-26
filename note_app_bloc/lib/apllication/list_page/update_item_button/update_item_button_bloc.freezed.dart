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
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description) gotoUpdatePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description)? gotoUpdatePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description)? gotoUpdatePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoUpdatePage value) gotoUpdatePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoUpdatePage value)? gotoUpdatePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoUpdatePage value)? gotoUpdatePage,
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
  $Res call({String title, String description});
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
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$GotoUpdatePageCopyWith<$Res>
    implements $UpdateItemButtonEventCopyWith<$Res> {
  factory _$$GotoUpdatePageCopyWith(
          _$GotoUpdatePage value, $Res Function(_$GotoUpdatePage) then) =
      __$$GotoUpdatePageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$GotoUpdatePageCopyWithImpl<$Res>
    extends _$UpdateItemButtonEventCopyWithImpl<$Res, _$GotoUpdatePage>
    implements _$$GotoUpdatePageCopyWith<$Res> {
  __$$GotoUpdatePageCopyWithImpl(
      _$GotoUpdatePage _value, $Res Function(_$GotoUpdatePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$GotoUpdatePage(
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

class _$GotoUpdatePage implements GotoUpdatePage {
  const _$GotoUpdatePage({required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'UpdateItemButtonEvent.gotoUpdatePage(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoUpdatePage &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoUpdatePageCopyWith<_$GotoUpdatePage> get copyWith =>
      __$$GotoUpdatePageCopyWithImpl<_$GotoUpdatePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description) gotoUpdatePage,
  }) {
    return gotoUpdatePage(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description)? gotoUpdatePage,
  }) {
    return gotoUpdatePage?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description)? gotoUpdatePage,
    required TResult orElse(),
  }) {
    if (gotoUpdatePage != null) {
      return gotoUpdatePage(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoUpdatePage value) gotoUpdatePage,
  }) {
    return gotoUpdatePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoUpdatePage value)? gotoUpdatePage,
  }) {
    return gotoUpdatePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoUpdatePage value)? gotoUpdatePage,
    required TResult orElse(),
  }) {
    if (gotoUpdatePage != null) {
      return gotoUpdatePage(this);
    }
    return orElse();
  }
}

abstract class GotoUpdatePage implements UpdateItemButtonEvent {
  const factory GotoUpdatePage(
      {required final String title,
      required final String description}) = _$GotoUpdatePage;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$GotoUpdatePageCopyWith<_$GotoUpdatePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateItemButtonState {
  Widget? get updatePageWidget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateItemButtonStateCopyWith<UpdateItemButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateItemButtonStateCopyWith<$Res> {
  factory $UpdateItemButtonStateCopyWith(UpdateItemButtonState value,
          $Res Function(UpdateItemButtonState) then) =
      _$UpdateItemButtonStateCopyWithImpl<$Res, UpdateItemButtonState>;
  @useResult
  $Res call({Widget? updatePageWidget});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatePageWidget = freezed,
  }) {
    return _then(_value.copyWith(
      updatePageWidget: freezed == updatePageWidget
          ? _value.updatePageWidget
          : updatePageWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateItemButtonStateCopyWith<$Res>
    implements $UpdateItemButtonStateCopyWith<$Res> {
  factory _$$_UpdateItemButtonStateCopyWith(_$_UpdateItemButtonState value,
          $Res Function(_$_UpdateItemButtonState) then) =
      __$$_UpdateItemButtonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget? updatePageWidget});
}

/// @nodoc
class __$$_UpdateItemButtonStateCopyWithImpl<$Res>
    extends _$UpdateItemButtonStateCopyWithImpl<$Res, _$_UpdateItemButtonState>
    implements _$$_UpdateItemButtonStateCopyWith<$Res> {
  __$$_UpdateItemButtonStateCopyWithImpl(_$_UpdateItemButtonState _value,
      $Res Function(_$_UpdateItemButtonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatePageWidget = freezed,
  }) {
    return _then(_$_UpdateItemButtonState(
      updatePageWidget: freezed == updatePageWidget
          ? _value.updatePageWidget
          : updatePageWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_UpdateItemButtonState implements _UpdateItemButtonState {
  const _$_UpdateItemButtonState({required this.updatePageWidget});

  @override
  final Widget? updatePageWidget;

  @override
  String toString() {
    return 'UpdateItemButtonState(updatePageWidget: $updatePageWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateItemButtonState &&
            (identical(other.updatePageWidget, updatePageWidget) ||
                other.updatePageWidget == updatePageWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatePageWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateItemButtonStateCopyWith<_$_UpdateItemButtonState> get copyWith =>
      __$$_UpdateItemButtonStateCopyWithImpl<_$_UpdateItemButtonState>(
          this, _$identity);
}

abstract class _UpdateItemButtonState implements UpdateItemButtonState {
  const factory _UpdateItemButtonState(
      {required final Widget? updatePageWidget}) = _$_UpdateItemButtonState;

  @override
  Widget? get updatePageWidget;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateItemButtonStateCopyWith<_$_UpdateItemButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}
