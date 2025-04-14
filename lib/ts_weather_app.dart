import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/routes/app_router.dart';
import 'package:ts_weather/core/services/connection_service.dart';
import 'package:ts_weather/core/theme/blocs/theme_bloc.dart';
import 'package:ts_weather/core/theme/data/datasources/theme_local_datasource.dart';
import 'package:ts_weather/core/theme/data/respositories/theme_repository_impl.dart';
import 'package:ts_weather/core/theme/domain/usecases/get_theme_mode_usecase.dart';
import 'package:ts_weather/core/theme/domain/usecases/set_theme_mode_usecase.dart';
import 'package:ts_weather/core/theme/presentation/app_theme.dart';
import 'package:ts_weather/core/widgets/no_internet_banner.dart';

class TsWeatherApp extends StatelessWidget {
  const TsWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create:
                (context) => ThemeBloc(
                getThemeMode: GetThemeModeUseCase(
                  repository: ThemeRepositoryImpl(
                    localDataSource: ThemeLocalDataSourceImpl(),
                  ),
                ),
                setThemeMode: SetThemeModeUseCase(
                  repository: ThemeRepositoryImpl(
                    localDataSource: ThemeLocalDataSourceImpl(),
                  ),
                ),
              )..add(const ThemeEvent.load()),
            )
          ],
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return state.maybeMap(
                success: (themeState) => MaterialApp.router(
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  theme: AppTheme.lightTheme,
                  darkTheme: AppTheme.darkTheme,
                  themeMode: state.maybeMap(
                    success: (state) => state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                    orElse: () => ThemeMode.light,
                  ),
                  routerConfig: AppRouter().config(),
                  debugShowCheckedModeBanner: false,
                  builder: (context, child) {
                    return StreamBuilder<bool>(
                      stream: ConnectionService().connectionStream,
                      initialData: ConnectionService().isConnected,
                      builder: (context, snapshot) {
                        final isConnected = snapshot.data ?? true;
                        return Stack(
                          children: [
                            child!,
                            if (!isConnected) NoInternetBanner(),
                          ],
                        );
                      },
                    );
                  },
                ), // OK
                orElse: () => const SizedBox(), // Loading trắng tạm
              );
            },
          ),
        );
      },
    );
  }
}
