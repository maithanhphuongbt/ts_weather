import 'package:auto_route/auto_route.dart';
import 'package:ts_weather/features/weather/presentation/pages/weather_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: WeatherRoute.page, initial: true)];
}
