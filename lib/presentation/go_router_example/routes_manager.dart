import 'package:bloc_practice/presentation/go_router_example/details_page.dart';
import 'package:bloc_practice/presentation/go_router_example/home_page.dart';
import 'package:bloc_practice/presentation/go_router_example/second_home_page.dart';
import 'package:bloc_practice/presentation/go_router_example/second_page_type_2.dart';
import 'package:go_router/go_router.dart';

class RoutesManager {
  static final routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => HomePage(),
        routes: [
          GoRoute(
              path: 'second-home-page',
              name: 'secondHomePage',
              builder: (context, state) => SecondHomePage(),
              routes: [
                GoRoute(
                  path: 'second-home-page-type-2',
                  name: 'secondHomePageType2',
                  builder: (context, state) => SecondPageType2(),
                ),
              ]),
        ],
      ),
      GoRoute(
        path: '/detailsPage',
        name: 'detailsPage',
        builder: (context, state) => DetailsPage(productId: state.extra as int),
      )
    ],
  );
}
