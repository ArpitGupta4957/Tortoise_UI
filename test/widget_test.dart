// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tortoise_ui/app.dart';

void main() {
  testWidgets('App builds (smoke)', (WidgetTester tester) async {
    // Ensure DI is initialized like app entrypoint does.
    await initialSetup();

    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Basic smoke: verify MaterialApp/router is present.
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
