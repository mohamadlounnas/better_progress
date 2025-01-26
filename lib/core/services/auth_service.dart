import 'package:better_progress/core/services/api_service.dart';
import 'package:better_progress/core/services/storage_service.dart';
import 'package:better_progress/progress/models/auth_response.dart';

/// Interface for authentication operations
abstract class AuthService {
  /// Initialize the service
  Future<void> init();
  
  /// Login with username and password
  Future<AuthResponse> login({required String username, required String password});
  
  /// Logout the current user
  Future<void> logout();
  
  /// Check if user is logged in
  bool isLoggedIn();
  
  /// Get the current auth token
  String? getAuthToken();
}

/// Implementation of [AuthService]
class AuthServiceImpl implements AuthService {
  final ApiService _apiService;
  final StorageService _storageService;
  
  static const String _tokenKey = 'auth_token';
  
  AuthServiceImpl({
    required ApiService apiService,
    required StorageService storageService,
  })  : _apiService = apiService,
        _storageService = storageService;
  
  @override
  Future<void> init() async {
    final token = _storageService.getString(_tokenKey);
    if (token != null) {
      _apiService.setAuthToken(token);
    }
  }
  
  @override
  Future<AuthResponse> login({
    required String username,
    required String password,
  }) async {
    final response = await _apiService.post('/auth/login', data: {
      'username': username,
      'password': password,
    });
    
    final authResponse = AuthResponse.fromJson(response.data);
    await _storageService.setString(_tokenKey, authResponse.token);
    _apiService.setAuthToken(authResponse.token);
    
    return authResponse;
  }
  
  @override
  Future<void> logout() async {
    await _storageService.remove(_tokenKey);
  }
  
  @override
  bool isLoggedIn() {
    return _storageService.getString(_tokenKey) != null;
  }
  
  @override
  String? getAuthToken() {
    return _storageService.getString(_tokenKey);
  }
} 