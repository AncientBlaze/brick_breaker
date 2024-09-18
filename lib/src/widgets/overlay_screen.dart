import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OverlayScreen extends StatefulWidget {
  const OverlayScreen({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  State<OverlayScreen> createState() => _OverlayScreenState();
  final String title;
  final String subtitle;
}

class _OverlayScreenState extends State<OverlayScreen> {
  @override
  Widget build(BuildContext context) {
    final title = widget.title; // Access title from widget
    final subtitle = widget.subtitle; //Access subtitle from widget
    return Container(
      alignment: const Alignment(0, -0.15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ).animate().slideY(duration: 750.ms, begin: -3, end: 0),
          const SizedBox(height: 16),
          
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineSmall,
          )
              .animate(onPlay: (controller) => controller.repeat())
              .fadeIn(duration: 1.seconds)
              .then()
              .fadeOut(duration: 1.seconds),
        ],
      ),
    );
  }
}
