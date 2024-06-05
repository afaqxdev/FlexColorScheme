import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex Color Scheme Demo',
      theme: FlexColorScheme.light(
              scheme: FlexScheme.bahamaBlue,
              appBarStyle: FlexAppBarStyle.primary,
              appBarBackground: FlexColor.aquaBlueDarkSecondaryVariant)
          .toTheme,
      darkTheme: FlexColorScheme.dark(
        scheme: FlexScheme.hippieBlue,
        appBarStyle: FlexAppBarStyle.background,
      ).toTheme,
      themeMode: ThemeMode.light,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Color Scheme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, Flutter!',
            ),
          ],
        ),
      ),
    );
  }
}
