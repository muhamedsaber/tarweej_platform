import 'package:get_it/get_it.dart';
import 'package:tarweej_platform/core/di/di_constants.dart';
import 'package:tarweej_platform/core/networking/api/api_constants.dart';
import 'package:tarweej_platform/core/networking/api/dio_factory/dio_factory.dart';
import 'package:tarweej_platform/features/auth/features/login/data/login_repo.dart';
import 'package:tarweej_platform/features/auth/features/login/data/reset_password_repo.dart';
import 'package:tarweej_platform/features/auth/services/email_service.dart';
import 'package:tarweej_platform/features/auth/features/signup/data/signup_repo.dart';
import 'package:tarweej_platform/features/auth/services/providers/impl/auth_providers/facebook_auth_provider_impl.dart';
import 'package:tarweej_platform/features/auth/services/providers/impl/auth_providers/github_auth_provider_impl.dart';
import 'package:tarweej_platform/features/auth/services/providers/impl/auth_providers/twitter_auth_provider_impl.dart';
import 'package:tarweej_platform/features/main_navigation/search/data/repos/search_images_repo.dart';
import 'package:tarweej_platform/features/main_navigation/search/data/service/search_images_service.dart';

import '../../features/auth/features/phone/data/signin_with_phone_number_repo.dart';
import '../../features/auth/services/providers/impl/auth_providers/google_auth_provider_impl.dart';
import '../networking/api/dio_consumer.dart';



GetIt getIt = GetIt.instance;

void setupDependencyInjection() {
  // Email Service
  getIt.registerSingleton<EmailService>(EmailService());
  //upsplash
  getIt.registerSingleton<DioFactory>(DioFactory(headers:ApiConstants.upsplashRequestHeaders,
  baseUrl: ApiConstants.updplashBaseUrl
  ),instanceName: DiConstants.upsplshDioFactory);
  getIt.registerSingleton<DioConsumer>(DioConsumer(getIt<DioFactory>(instanceName: DiConstants.upsplshDioFactory).dio));
  // 
  _setupSignup();
  _setupAuthenticationProviders();
  _setupSignInWithPhoneNumber();
  _setupLogin();
  _resetPasswordSetup();
  /// Upsplash 
  getIt.registerSingleton<DioFactory>(DioFactory(baseUrl:ApiConstants.datamuseApiBaseUrl));
  getIt.registerSingleton<DioConsumer>(DioConsumer(getIt<DioFactory>().dio),instanceName:DiConstants.datasumeDioFactory);
  getIt.registerSingleton<SearchImagesService>(SearchImagesService(getIt<DioConsumer>(instanceName:DiConstants.datasumeDioFactory)));
  getIt.registerSingleton<SearchImagesRepo>(SearchImagesRepo(service:  getIt<SearchImagesService>()));
}

///---------- Auth Providers
_setupAuthenticationProviders(){
  getIt.registerSingleton<FacebookAuthProviderImpl>(FacebookAuthProviderImpl());
  getIt.registerSingleton<GoogleAuthProviderImpl>(GoogleAuthProviderImpl());
  getIt.registerSingleton<GitHubAuthProviderImpl>(GitHubAuthProviderImpl());
  getIt.registerSingleton<TwitterAuthProviderImpl>(TwitterAuthProviderImpl());
}


///----------- Auth Repos 
_setupSignup() {
  getIt.registerSingleton<SignupRepo>(
      SignupRepo(emailService: getIt<EmailService>()));
}

void _setupSignInWithPhoneNumber() {
  getIt.registerFactory<SigninWithPhoneNumberRepo>(
    () => SigninWithPhoneNumberRepo(),
  );
}



void _setupLogin() {
  getIt.registerSingleton<LoginRepo>(
    LoginRepo(emailService: getIt<EmailService>()),
  );
}

void _resetPasswordSetup() {
  getIt.registerSingleton<ResetPasswordRepo>(
    ResetPasswordRepo(getIt<EmailService>()),
  );
}
