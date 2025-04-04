import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:trips_my_planner/common/navigation/router/router.dart';
import 'package:trips_my_planner/common/utils/colors.dart' as constants;
import 'package:flutter/material.dart';

class TripsPlannerApp extends StatelessWidget {
  const TripsPlannerApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp.router(
        routerConfig: router,
        builder: Authenticator.builder(),
        theme: ThemeData(
          colorScheme:
          ColorScheme.fromSwatch(primarySwatch: constants.primaryColor)
              .copyWith(
            background: const Color(0xff59d2ef),
          ),
        ),
      ),
    );
  }
}