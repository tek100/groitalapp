// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future initializeOneSignalReceiver() async {
  // Initialize with your app ID
  OneSignal.initialize('0793a3d1-7596-46de-a8d4-fb836e2c8c64');

  // Request permission for iOS
  OneSignal.Notifications.requestPermission(true);

  // Set up notification handlers
  OneSignal.Notifications.addForegroundWillDisplayListener((event) {
    // This handles notifications received while app is in foreground
    print('Received notification: ${event.notification.title}');

    // Display the notification
    event.notification.display();
  });

  OneSignal.Notifications.addClickListener((event) {
    // This handles when user taps on the notification
    print('Notification clicked: ${event.notification.title}');

    // You can add navigation logic here if needed
  });
}
