import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trainer_promoter/src/routes/router_notifier.dart';

final Provider<GoRouter> routerProvider = Provider<GoRouter>(
  (ref) {
    final router = RouterNotifier(ref);

    return GoRouter(
      initialLocation: "/",
      routes: router.routes,
      debugLogDiagnostics: true,
      refreshListenable: router,
      redirect: router.redirectLogic,
    );
  },
);
