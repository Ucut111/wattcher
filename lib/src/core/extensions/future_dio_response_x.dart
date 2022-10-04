import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

extension FutureDioResponseX on Future<Response> {
  Future<R> computeResponse<R>(R Function(Map<String, dynamic>) fromMap) =>
      then((response) => compute(fromMap, response.data as Map<String, dynamic>));

  Future<List<R>> computeResponseList<R>(R Function(Map<String, dynamic>) fromMap) =>
      then((response) => compute(
          (List data) => data.map((avatar) => fromMap(avatar)).toList(), response.data as List));
}
