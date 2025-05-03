// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_service_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ApiServiceState {
  ApiServiceStatus get status => throw _privateConstructorUsedError;
  List<DataModel> get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ApiServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiServiceStateCopyWith<ApiServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiServiceStateCopyWith<$Res> {
  factory $ApiServiceStateCopyWith(
    ApiServiceState value,
    $Res Function(ApiServiceState) then,
  ) = _$ApiServiceStateCopyWithImpl<$Res, ApiServiceState>;
  @useResult
  $Res call({ApiServiceStatus status, List<DataModel> data, String? error});
}

/// @nodoc
class _$ApiServiceStateCopyWithImpl<$Res, $Val extends ApiServiceState>
    implements $ApiServiceStateCopyWith<$Res> {
  _$ApiServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as ApiServiceStatus,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<DataModel>,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiServiceStateImplCopyWith<$Res>
    implements $ApiServiceStateCopyWith<$Res> {
  factory _$$ApiServiceStateImplCopyWith(
    _$ApiServiceStateImpl value,
    $Res Function(_$ApiServiceStateImpl) then,
  ) = __$$ApiServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiServiceStatus status, List<DataModel> data, String? error});
}

/// @nodoc
class __$$ApiServiceStateImplCopyWithImpl<$Res>
    extends _$ApiServiceStateCopyWithImpl<$Res, _$ApiServiceStateImpl>
    implements _$$ApiServiceStateImplCopyWith<$Res> {
  __$$ApiServiceStateImplCopyWithImpl(
    _$ApiServiceStateImpl _value,
    $Res Function(_$ApiServiceStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ApiServiceStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as ApiServiceStatus,
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<DataModel>,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ApiServiceStateImpl implements _ApiServiceState {
  const _$ApiServiceStateImpl({
    this.status = ApiServiceStatus.initial,
    final List<DataModel> data = const [],
    this.error,
  }) : _data = data;

  @override
  @JsonKey()
  final ApiServiceStatus status;
  final List<DataModel> _data;
  @override
  @JsonKey()
  List<DataModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'ApiServiceState(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiServiceStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_data),
    error,
  );

  /// Create a copy of ApiServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiServiceStateImplCopyWith<_$ApiServiceStateImpl> get copyWith =>
      __$$ApiServiceStateImplCopyWithImpl<_$ApiServiceStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ApiServiceState implements ApiServiceState {
  const factory _ApiServiceState({
    final ApiServiceStatus status,
    final List<DataModel> data,
    final String? error,
  }) = _$ApiServiceStateImpl;

  @override
  ApiServiceStatus get status;
  @override
  List<DataModel> get data;
  @override
  String? get error;

  /// Create a copy of ApiServiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiServiceStateImplCopyWith<_$ApiServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
