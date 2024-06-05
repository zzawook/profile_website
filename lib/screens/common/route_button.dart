import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteButton extends StatelessWidget {
  final String routeName, routeLocation, currentLocation, tooltip;
  final IconData icon;

  const RouteButton({
    super.key,
    required this.routeName,
    required this.routeLocation,
    required this.currentLocation,
    required this.tooltip,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.goNamed(routeName);
      },
      tooltip: tooltip,
      icon: Icon(
        icon,
        color: currentLocation == routeLocation
            ? const Color(0xff9ca4ca)
            : const Color(0xff3d496b),
        size: 40,
      ),
    );
  }
}
