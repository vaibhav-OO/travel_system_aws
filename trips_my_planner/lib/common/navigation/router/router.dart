import 'package:trips_my_planner/common/navigation/router/routes.dart';
import 'package:trips_my_planner/features/trip/ui/edit_trip_page/edit_trip_page.dart';
import 'package:trips_my_planner/features/trip/ui/trip_page/trip_page.dart';
import 'package:trips_my_planner/features/trip/ui/edit_trip_page/edit_trip_page.dart';
import 'package:trips_my_planner/features/trip/ui/trips_list/trips_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trips_my_planner/models/Trip.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/trip/:id',
      name: AppRoute.trip.name,
      builder: (context, state) => const TripsListPage(),
    ),
    GoRoute(
      path: '/trip/:id',
      name: AppRoute.trip.name,
      builder: (context, state) {
        final tripId = state.pathParameters['id']!;
        return TripPage(tripId: tripId);
      },
    ),
    GoRoute(
      path: '/edittrip/:id',
      name: AppRoute.editTrip.name,
      builder: (context, state) {
        return EditTripPage(
          trip: state.extra! as Trip,
        );
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);


