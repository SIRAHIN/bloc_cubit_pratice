import 'package:bloc_practice/presentation/go_router_example/shell_route/main_bottom_nav_shell.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/nav_pages/home_nav_page.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/nav_pages/home_nested_page/home_nested_details_page.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/nav_pages/home_to_page/home_to_request_page.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/nav_pages/profile_nav_page.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/nav_pages/settings_nav_page.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/spalsh_nav.dart';
import 'package:go_router/go_router.dart';

class RouteHandler {
  static final routerConfig = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) {
            return SpalshNav();
          }),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainBottomNavShell(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) {
                  return HomeNavPage();
                },
                routes: [
                  GoRoute(path: 'home-nested-details',
                  builder: (context, state) {
                    return HomeNestedDetailsPage();
                  },
                  )
                ]
              ),
                GoRoute(path: '/home-to-request',
                  builder: (context, state) {
                    return HomeToRequestPage();
                  },
                  )
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: '/profile',
                  builder: (context, state) {
                    return ProfileNavPage();
                  }),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: '/settings',
                  builder: (context, state) {
                    return SettingsNavPage();
                  }),
            ],
          ),
        ],
      )
    ],
  );
}
