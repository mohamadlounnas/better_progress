import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_isar_store/dio_cache_interceptor_isar_store.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

/// Interface for making HTTP requests
abstract class ApiService {
  /// Initialize the service
  Future<void> init();
  
  /// Make a GET request
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters});
  
  /// Make a POST request
  Future<Response> post(String path, {dynamic data});
  
  /// Set auth token for subsequent requests
  void setAuthToken(String token);
}

/// Implementation of [ApiService] using Dio
class ApiServiceImpl implements ApiService {
  final Dio _dio = Dio();
  
  @override
  Future<void> init() async {
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.validateStatus = (status) => true;
    
    // Setup caching
    final cacheStore = IsarCacheStore(
      kIsWeb ? "" : (await getApplicationDocumentsDirectory()).path,
      name: 'better_progress_cache',
    );
    
    _dio.interceptors.add(
      DioCacheInterceptor(
        options: CacheOptions(
          store: cacheStore,
          policy: CachePolicy.refresh,
        ),
      ),
    );
  }
  
  @override
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } catch (e) {
      debugPrint('GET request failed: $e');
      rethrow;
    }
  }
  
  @override
  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await _dio.post(path, data: data);
    } catch (e) {
      debugPrint('POST request failed: $e');
      rethrow;
    }
  }
  
  @override
  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = token;
  }
} 