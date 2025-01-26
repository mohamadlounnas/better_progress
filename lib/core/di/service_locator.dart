import 'package:get_it/get_it.dart';
import 'package:better_progress/core/services/api_service.dart';
import 'package:better_progress/core/services/storage_service.dart';
import 'package:better_progress/core/services/auth_service.dart';

/// Global ServiceLocator instance
final sl = GetIt.instance;

/// Initialize all dependencies
Future<void> setupServiceLocator() async {
  // Core Services
  sl.registerLazySingleton<StorageService>(() => StorageServiceImpl());
  sl.registerLazySingleton<ApiService>(() => ApiServiceImpl());
  
  // Feature Services
  sl.registerLazySingleton<AuthService>(() => AuthServiceImpl(
    apiService: sl<ApiService>(),
    storageService: sl<StorageService>(),
  ));

  // Initialize services that require async initialization
  await sl<StorageService>().init();
  await sl<ApiService>().init();
  await sl<AuthService>().init();
} 