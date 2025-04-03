// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keiko_food_reviews/helper/themes.dart';
import 'package:keiko_food_reviews/main.dart';
import 'package:keiko_food_reviews/pages/home.dart';

void main() {
  testWidgets('MyApp renders correctly with themes and the home widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // verify the MaterialApp
    final materialAppFinder = find.byType(MaterialApp);
    expect(materialAppFinder, findsOneWidget);

    // verify the home widget is rendered
    expect(find.byType(Home), findsOneWidget);

    // test the MaterialApp's Theme and darkTheme
    final MaterialApp materialApp = tester.widget(materialAppFinder);
    expect(materialApp.theme, Themes.lightTheme());
    expect(materialApp.theme, Themes.darkTheme());

    // verify theme is set correctly
    expect(materialApp.themeMode, ThemeMode.system);

    // verify the placeholder is rendering on the home widget
    expect(find.byType(Placeholder), findsOneWidget);
  });
}
