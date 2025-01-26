import 'package:better_progress/core/services/api_service.dart';
import 'package:better_progress/core/services/auth_service.dart';
import 'package:better_progress/core/services/storage_service.dart';
import 'package:better_progress/progress/models/auth_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Generate mocks
@GenerateMocks([ApiService, StorageService])
import 'auth_service_test.mocks.dart';

void main() {
  late AuthService authService;
  late MockApiService mockApiService;
  late MockStorageService mockStorageService;

  setUp(() {
    mockApiService = MockApiService();
    mockStorageService = MockStorageService();
    authService = AuthServiceImpl(
      apiService: mockApiService,
      storageService: mockStorageService,
    );
  });

  group('AuthService', () {
    const testToken = 'test_token';
    const testUsername = 'test_user';
    const testPassword = 'test_pass';

    test('init - should set auth token if exists in storage', () async {
      // Arrange
      when(mockStorageService.getString('auth_token')).thenReturn(testToken);

      // Act
      await authService.init();

      // Assert
      verify(mockApiService.setAuthToken(testToken)).called(1);
    });

    test('login - should store token and set it in api service', () async {
      // Arrange
      final response = Response(
        requestOptions: RequestOptions(path: ''),
        data: {'token': testToken},
      );
      when(mockApiService.post('/auth/login', data: any))
          .thenAnswer((_) async => response);

      // Act
      await authService.login(username: testUsername, password: testPassword);

      // Assert
      verify(mockStorageService.setString('auth_token', testToken)).called(1);
      verify(mockApiService.setAuthToken(testToken)).called(1);
    });

    test('logout - should remove token from storage', () async {
      // Act
      await authService.logout();

      // Assert
      verify(mockStorageService.remove('auth_token')).called(1);
    });

    test('isLoggedIn - should return true if token exists', () {
      // Arrange
      when(mockStorageService.getString('auth_token')).thenReturn(testToken);

      // Act & Assert
      expect(authService.isLoggedIn(), isTrue);
    });

    test('isLoggedIn - should return false if token does not exist', () {
      // Arrange
      when(mockStorageService.getString('auth_token')).thenReturn(null);

      // Act & Assert
      expect(authService.isLoggedIn(), isFalse);
    });
  });
} 