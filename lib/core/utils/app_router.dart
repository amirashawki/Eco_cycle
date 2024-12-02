import 'package:ecocycle_app/core/utils/bottom_nav.dart';
import 'package:ecocycle_app/features/home/views/home_view.dart';
import 'package:ecocycle_app/features/on_boarding/on_bording_view.dart';
import 'package:ecocycle_app/features/scan/views/scan_product_view.dart';
import 'package:ecocycle_app/features/scan/views/scan_view.dart';
import 'package:ecocycle_app/features/splash/views/splash_view.dart';
import 'package:ecocycle_app/features/splash/views/widgets/splash_view_2.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kOnBordingView = '/OnBordingView';
  static const kScanView = '/ScanView';
  static const kScanProductView = '/ScanProductView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, State) => ScanView(),
    ),
    GoRoute(
      path: '/OnBordingView',
      builder: (context, State) => OnBordingView(),
    ),
    GoRoute(
      path: '/homeview',
      builder: (context, State) => HomeView(),
    ),
    GoRoute(
      path: '/ScanProductView',
      builder: (context, State) => ScanProductView(),
    ),
  ]);
}
