import 'package:flutter/material.dart';

//void main() => runApp(TopTabBarApp());

class TopTabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final tabs = ['Home', 'Canvas', 'Mat'];

    return MaterialApp(
      title: 'TopTabBar',
      theme: _buildEmbroideryTheme(),
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TopTabBar'),
            automaticallyImplyLeading: false,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                for (final tab in tabs) Tab(text: tab)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for (final tab in tabs)
                Center(
                  child: Text(tab),
                )
            ],
          ),
        ),
      ),
    );
  }
}


ThemeData _buildEmbroideryTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme:_colorScheme,
    accentColor: colorBrown900,
    primaryColor: colorPink100,
    buttonColor: colorPink100,
    scaffoldBackgroundColor: colorBackgroundWhite,
    cardColor: colorBackgroundWhite,
    textSelectionColor: colorPink100,
    errorColor: colorErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _colorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: buildColorTextTheme(base.textTheme),
    primaryTextTheme: buildColorTextTheme(base.primaryTextTheme),
    accentTextTheme: buildColorTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
    indicatorColor: colorBrown600,
  );
}

const ColorScheme _colorScheme = ColorScheme(
    primary: colorPink100,
    primaryVariant: colorBrown900,
    secondary: colorPink50,
    secondaryVariant: colorBrown900,
    surface: colorSurfaceWhite,
    background: colorBackgroundWhite,
    error: colorErrorRed,
    onPrimary: colorBrown900,
    onSecondary: colorBrown900,
    onSurface: colorBrown900,
    onBackground: colorBrown900,
    onError: colorSurfaceWhite,
    brightness: Brightness.light,
);

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: colorBrown900);
}

TextTheme buildColorTextTheme(TextTheme base) {
  return base.copyWith(
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
    button: base.button.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
  )
   .apply(
    fontFamily: 'Rubik',
    displayColor: colorBrown900,
    bodyColor: colorBrown900,
  );
}

const Color colorPink50 = Color(0xFFFEEAE6);
const Color colorPink100 = Color(0xFFFEDBD0);
const Color colorPink300 = Color(0xFFFBB8AC);
const Color colorPink400 = Color(0xFFEAA4A4);

const Color colorBrown900 = Color(0xFF442B2D);
const Color colorBrown600 = Color(0xFF7D4F52);

const Color colorErrorRed = Color(0xFFC5032B);

const Color colorSurfaceWhite = Color(0xFFFFFBFA);
const Color colorBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
