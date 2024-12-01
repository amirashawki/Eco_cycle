import 'package:ecocycle_app/features/on_boarding/on_bording_view.dart';
import 'package:ecocycle_app/features/splash/views/splash_view.dart';
import 'package:ecocycle_app/features/splash/views/widgets/splash_view_2.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kSearchView = '/searchview';
  static const kBookDetaislView = '/BookDetailsView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, State) => OnBordingView(),
    ),
  ]);
}
