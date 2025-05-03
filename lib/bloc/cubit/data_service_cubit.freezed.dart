// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_service_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DataServiceState {
  dynamic get status => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;

  /// Create a copy of DataServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataServiceStateCopyWith<DataServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataServiceStateCopyWith<$Res> {
  factory $DataServiceStateCopyWith(
    DataServiceState value,
    $Res Function(DataServiceState) then,
  ) = _$DataServiceStateCopyWithImpl<$Res, DataServiceState>;
  @useResult
  $Res call({dynamic status, List<Answer> answers});
}

/// @nodoc
class _$DataServiceStateCopyWithImpl<$Res, $Val extends DataServiceState>
    implements $DataServiceStateCopyWith<$Res> {
  _$DataServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed, Object? answers = null}) {
    return _then(
      _value.copyWith(
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            answers:
                null == answers
                    ? _value.answers
                    : answers // ignore: cast_nullable_to_non_nullable
                        as List<Answer>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DataServiceStateImplCopyWith<$Res>
    implements $DataServiceStateCopyWith<$Res> {
  factory _$$DataServiceStateImplCopyWith(
    _$DataServiceStateImpl value,
    $Res Function(_$DataServiceStateImpl) then,
  ) = __$$DataServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic status, List<Answer> answers});
}

/// @nodoc
class __$$DataServiceStateImplCopyWithImpl<$Res>
    extends _$DataServiceStateCopyWithImpl<$Res, _$DataServiceStateImpl>
    implements _$$DataServiceStateImplCopyWith<$Res> {
  __$$DataServiceStateImplCopyWithImpl(
    _$DataServiceStateImpl _value,
    $Res Function(_$DataServiceStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DataServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed, Object? answers = null}) {
    return _then(
      _$DataServiceStateImpl(
        status: freezed == status ? _value.status! : status,
        answers:
            null == answers
                ? _value._answers
                : answers // ignore: cast_nullable_to_non_nullable
                    as List<Answer>,
      ),
    );
  }
}

/// @nodoc

class _$DataServiceStateImpl implements _DataServiceState {
  const _$DataServiceStateImpl({
    this.status = DataServiceStatus.initial,
    final List<Answer> answers = const [],
  }) : _answers = answers;

  @override
  @JsonKey()
  final dynamic status;
  final List<Answer> _answers;
  @override
  @JsonKey()
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'DataServiceState(status: $status, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataServiceStateImpl &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(status),
    const DeepCollectionEquality().hash(_answers),
  );

  /// Create a copy of DataServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataServiceStateImplCopyWith<_$DataServiceStateImpl> get copyWith =>
      __$$DataServiceStateImplCopyWithImpl<_$DataServiceStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DataServiceState implements DataServiceState {
  const factory _DataServiceState({
    final dynamic status,
    final List<Answer> answers,
  }) = _$DataServiceStateImpl;

  @override
  dynamic get status;
  @override
  List<Answer> get answers;

  /// Create a copy of DataServiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataServiceStateImplCopyWith<_$DataServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
