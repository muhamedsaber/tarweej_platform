import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej_platform/config/language/language_changer_notifier.dart';
import 'package:tarweej_platform/config/router/app_router.dart';
import 'package:tarweej_platform/config/router/routes.dart';
import 'package:tarweej_platform/config/theme/dark_theme/dark_theme.dart';
import 'package:tarweej_platform/generated/l10n.dart';

class TarweejPlatformApp extends ConsumerWidget {
  const TarweejPlatformApp({super.key, required this.isUserLoggedIn});
  final bool isUserLoggedIn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String lang = ref.watch(languageChangerProvider);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, context) {
          return MaterialApp(
            initialRoute: isUserLoggedIn
                ? Routes.mainNavigationView
                : Routes.mainAuthView,
            builder: (context, child) {
              return Theme(
                data: DarkTheme.theme(context),
                child: child!,
              );
            },
            onGenerateInitialRoutes: (initialRoute) => [
              AppRouter().onGenerateRoute(RouteSettings(name: initialRoute)),
            ],
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter().onGenerateRoute,
            locale: Locale(lang),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          );
        });
  }
}
