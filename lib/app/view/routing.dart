import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routing.g.dart';

@TypedGoRoute<HomeScreenRoute>(
    path: '/',
    routes: [
      TypedGoRoute<SongRoute>(
        path: 'song/:id',
      )
    ]
)
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }
}

@immutable
class SongRoute extends GoRouteData {
  final int id;

  const SongRoute({
    required this.id,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }
}