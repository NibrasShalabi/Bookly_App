import 'package:booklyapp/features/home/view/book_details_view.dart';
import 'package:booklyapp/features/home/view/home_view.dart';
import 'package:booklyapp/features/search/presentaion/views/search_view.dart';
import 'package:booklyapp/features/splash/presentaion/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView()
    ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView()
    ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (context, state) => const BookDetailsView()
    ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView()
    ),

    ],
  );

}