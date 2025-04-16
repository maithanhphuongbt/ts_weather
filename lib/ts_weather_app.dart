import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/constants/app_theme.dart';
import 'package:ts_weather/core/routes/app_router.dart';
import 'package:ts_weather/core/widgets/no_internet_banner.dart';
import 'package:ts_weather/features/app_setting/di/app_settings_di.dart';
import 'package:ts_weather/features/app_setting/presentation/blocs/app_settings_bloc.dart';

class TsWeatherApp extends ConsumerWidget {
  const TsWeatherApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        final appSettingsBloc = ref.watch(appSettingBlocProvider);
        return BlocProvider(create: (context) => appSettingsBloc, child: _buildBody(appSettingsBloc));
      },
    );
  }

  Widget _buildBody(AppSettingsBloc appSettingsBloc) {
    return BlocBuilder<AppSettingsBloc, AppSettingsState>(
      bloc: appSettingsBloc,
      builder: (context, state) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: state.themeMode,
          routerConfig: AppRouter().config(),
          debugShowCheckedModeBanner: false,
          builder: _buildContent,
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, Widget? child) {
    final appSettingsState = context.watch<AppSettingsBloc>().state;
    return Stack(children: [child!, if (!appSettingsState.hasInternet) const NoInternetBanner()]);
  }
}
