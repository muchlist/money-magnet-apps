import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/commons/data/metadata.dart';

part 'remote_response.freezed.dart';

@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();
  const factory RemoteResponse.noConnection() = _NoConnection<T>;
  const factory RemoteResponse.withNewData(
      {required T data, MetadataDTO? meta}) = _WithNewData<T>;
}
