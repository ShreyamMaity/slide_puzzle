// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:very_good_slide_puzzle/dashatar/dashatar.dart';

import '../../helpers/helpers.dart';

void main() {
  group('DashatarShareYourScore', () {
    late DashatarShareDialogEnterAnimation animation;

    setUp(() {
      animation = DashatarShareDialogEnterAnimation(
        AnimationController(vsync: TestVSync()),
      );
    });

    testWidgets('renders on a large display', (tester) async {
      tester.setLargeDisplaySize();

      await tester.pumpApp(
        SingleChildScrollView(
          child: DashatarShareYourScore(animation: animation),
        ),
      );

      expect(
        find.byKey(Key('dashatar_share_your_score')),
        findsOneWidget,
      );
    });

    testWidgets('renders on a medium display', (tester) async {
      tester.setMediumDisplaySize();

      await tester.pumpApp(
        SingleChildScrollView(
          child: DashatarShareYourScore(animation: animation),
        ),
      );

      expect(
        find.byKey(Key('dashatar_share_your_score')),
        findsOneWidget,
      );
    });

    testWidgets('renders on a small display', (tester) async {
      tester.setSmallDisplaySize();

      await tester.pumpApp(
        SingleChildScrollView(
          child: DashatarShareYourScore(animation: animation),
        ),
      );

      expect(
        find.byKey(Key('dashatar_share_your_score')),
        findsOneWidget,
      );
    });

    testWidgets('renders title', (tester) async {
      await tester.pumpApp(
        SingleChildScrollView(
          child: DashatarShareYourScore(animation: animation),
        ),
      );

      expect(
        find.byKey(Key('dashatar_share_your_score_title')),
        findsOneWidget,
      );
    });

    testWidgets('renders message', (tester) async {
      await tester.pumpApp(
        SingleChildScrollView(
          child: DashatarShareYourScore(animation: animation),
        ),
      );

      expect(
        find.byKey(Key('dashatar_share_your_score_message')),
        findsOneWidget,
      );
    });

    testWidgets('renders DashatarTwitterButton', (tester) async {
      await tester.pumpApp(
        SingleChildScrollView(
          child: DashatarShareYourScore(animation: animation),
        ),
      );

      expect(
        find.byType(DashatarTwitterButton),
        findsOneWidget,
      );
    });

    testWidgets('renders DashatarFacebookButton', (tester) async {
      await tester.pumpApp(
        SingleChildScrollView(
          child: DashatarShareYourScore(animation: animation),
        ),
      );

      expect(
        find.byType(DashatarFacebookButton),
        findsOneWidget,
      );
    });
  });
}