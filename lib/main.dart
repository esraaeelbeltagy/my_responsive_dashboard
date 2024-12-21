import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive_dashboard.dart';


void main() {
  runApp(
    DevicePreview(
        enabled: true,
        tools: const [
          ...DevicePreview.defaultTools,
        ],
        builder: (context) {
          return const ResponsiveDashBoard(); 
        }),
  );
}

