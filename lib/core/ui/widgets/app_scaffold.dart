import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Color? backgroundColor;
  final Widget body;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final bool safeAreaRight;
  final bool safeAreaLeft;
  final bool extendsBodyBehindBottomBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;

  const AppScaffold({
    super.key,
    this.appBar,
    this.backgroundColor,
    required this.body,
    this.safeAreaTop = true,
    this.safeAreaBottom = true,
    this.safeAreaRight = true,
    this.safeAreaLeft = true,
    this.extendsBodyBehindBottomBar = false,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      appBar: appBar,
      extendBody: extendsBodyBehindBottomBar,
      backgroundColor: backgroundColor ?? theme.colorScheme.surfaceVariant,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        left: safeAreaLeft,
        top: safeAreaTop,
        right: safeAreaRight,
        bottom: safeAreaBottom,
        child: body,
      ),
    );
  }
}
