// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.9

import 'package:flutter/material.dart';
import 'package:gallery/layout/letter_spacing.dart';
import 'package:gallery/studies/crane/colors.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData craneTheme = _buildCraneTheme();

IconThemeData _customIconTheme(IconThemeData original, Color color) {
  return original.copyWith(color: color);
}

ThemeData _buildCraneTheme() {
  final base = ThemeData.light();

  return base.copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: cranePurple800,
      secondary: craneRed700,
    ),
    primaryColor: cranePurple800,
    hintColor: craneWhite60,
    indicatorColor: cranePrimaryWhite,
    scaffoldBackgroundColor: cranePrimaryWhite,
    cardColor: cranePrimaryWhite,
    errorColor: craneErrorOrange,
    highlightColor: Colors.transparent,
    textTheme: _buildCraneTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: cranePurple700,
    ),
    primaryTextTheme: _buildCraneTextTheme(base.primaryTextTheme),
    iconTheme: _customIconTheme(base.iconTheme, craneWhite60),
    primaryIconTheme: _customIconTheme(base.iconTheme, cranePrimaryWhite),
  );
}

TextTheme _buildCraneTextTheme(TextTheme base) {
  return GoogleFonts.ralewayTextTheme(
    base.copyWith(
      headline1: base.headline1.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: 96,
      ),
      headline2: base.headline2.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 60,
      ),
      headline3: base.headline3.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 48,
      ),
      headline4: base.headline4.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 34,
      ),
      headline5: base.headline5.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      headline6: base.headline6.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      subtitle1: base.subtitle1.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: letterSpacingOrNone(0.5),
      ),
      subtitle2: base.subtitle2.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: craneGrey,
      ),
      bodyText1: base.bodyText1.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodyText2: base.bodyText2.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      button: base.button.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 13,
        letterSpacing: letterSpacingOrNone(0.8),
      ),
      caption: base.caption.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: craneGrey,
      ),
      overline: base.overline.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
    ),
  );
}
