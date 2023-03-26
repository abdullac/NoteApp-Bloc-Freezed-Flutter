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
mixin _$EditItemButtonEvent {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description) gotoEditPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description)? gotoEditPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description)? gotoEditPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoEditPage value) gotoEditPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoEditPage value)? gotoEditPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoEditPage value)? gotoEditPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditItemButtonEventCopyWith<EditItemButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditItemButtonEventCopyWith<$Res> {
  factory $EditItemButtonEventCopyWith(
          EditItemButtonEvent value, $Res Function(EditItemButtonEvent) then) =
      _$EditItemButtonEventCopyWithImpl<$Res, EditItemButtonEvent>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$EditItemButtonEventCopyWithImpl<$Res, $Val extends EditItemButtonEvent>
    implements $EditItemButtonEventCopyWith<$Res> {
  _$EditItemButtonEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GotoEditPageCopyWith<$Res>
    implements $EditItemButtonEventCopyWith<$Res> {
  factory _$$GotoEditPageCopyWith(
          _$GotoEditPage value, $Res Function(_$GotoEditPage) then) =
      __$$GotoEditPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$GotoEditPageCopyWithImpl<$Res>
    extends _$EditItemButtonEventCopyWithImpl<$Res, _$GotoEditPage>
    implements _$$GotoEditPageCopyWith<$Res> {
  __$$GotoEditPageCopyWithImpl(
      _$GotoEditPage _value, $Res Function(_$GotoEditPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$GotoEditPage(
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

class _$GotoEditPage implements GotoEditPage {
  const _$GotoEditPage({required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'EditItemButtonEvent.gotoEditPage(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoEditPage &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoEditPageCopyWith<_$GotoEditPage> get copyWith =>
      __$$GotoEditPageCopyWithImpl<_$GotoEditPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description) gotoEditPage,
  }) {
    return gotoEditPage(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description)? gotoEditPage,
  }) {
    return gotoEditPage?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description)? gotoEditPage,
    required TResult orElse(),
  }) {
    if (gotoEditPage != null) {
      return gotoEditPage(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoEditPage value) gotoEditPage,
  }) {
    return gotoEditPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoEditPage value)? gotoEditPage,
  }) {
    return gotoEditPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoEditPage value)? gotoEditPage,
    required TResult orElse(),
  }) {
    if (gotoEditPage != null) {
      return gotoEditPage(this);
    }
    return orElse();
  }
}

abstract class GotoEditPage implements EditItemButtonEvent {
  const factory GotoEditPage(
      {required final String title,
      required final String description}) = _$GotoEditPage;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$GotoEditPageCopyWith<_$GotoEditPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditItemButtonState {
  Widget? get editPageWidget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditItemButtonStateCopyWith<EditItemButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditItemButtonStateCopyWith<$Res> {
  factory $EditItemButtonStateCopyWith(
          EditItemButtonState value, $Res Function(EditItemButtonState) then) =
      _$EditItemButtonStateCopyWithImpl<$Res, EditItemButtonState>;
  @useResult
  $Res call({Widget? editPageWidget});
}

/// @nodoc
class _$EditItemButtonStateCopyWithImpl<$Res, $Val extends EditItemButtonState>
    implements $EditItemButtonStateCopyWith<$Res> {
  _$EditItemButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editPageWidget = freezed,
  }) {
    return _then(_value.copyWith(
      editPageWidget: freezed == editPageWidget
          ? _value.editPageWidget
          : editPageWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditItemButtonStateCopyWith<$Res>
    implements $EditItemButtonStateCopyWith<$Res> {
  factory _$$_EditItemButtonStateCopyWith(_$_EditItemButtonState value,
          $Res Function(_$_EditItemButtonState) then) =
      __$$_EditItemButtonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget? editPageWidget});
}

/// @nodoc
class __$$_EditItemButtonStateCopyWithImpl<$Res>
    extends _$EditItemButtonStateCopyWithImpl<$Res, _$_EditItemButtonState>
    implements _$$_EditItemButtonStateCopyWith<$Res> {
  __$$_EditItemButtonStateCopyWithImpl(_$_EditItemButtonState _value,
      $Res Function(_$_EditItemButtonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editPageWidget = freezed,
  }) {
    return _then(_$_EditItemButtonState(
      editPageWidget: freezed == editPageWidget
          ? _value.editPageWidget
          : editPageWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_EditItemButtonState implements _EditItemButtonState {
  const _$_EditItemButtonState({required this.editPageWidget});

  @override
  final Widget? editPageWidget;

  @override
  String toString() {
    return 'EditItemButtonState(editPageWidget: $editPageWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditItemButtonState &&
            (identical(other.editPageWidget, editPageWidget) ||
                other.editPageWidget == editPageWidget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editPageWidget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditItemButtonStateCopyWith<_$_EditItemButtonState> get copyWith =>
      __$$_EditItemButtonStateCopyWithImpl<_$_EditItemButtonState>(
          this, _$identity);
}

abstract class _EditItemButtonState implements EditItemButtonState {
  const factory _EditItemButtonState({required final Widget? editPageWidget}) =
      _$_EditItemButtonState;

  @override
  Widget? get editPageWidget;
  @override
  @JsonKey(ignore: true)
  _$$_EditItemButtonStateCopyWith<_$_EditItemButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}
