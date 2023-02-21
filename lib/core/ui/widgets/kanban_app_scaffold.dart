import 'package:flutter/material.dart';

class KanbanAppScaffold extends StatelessWidget {
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

  const KanbanAppScaffold({
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
      key: scaffoldKey,
      appBar: appBar,
      extendBody: extendsBodyBehindBottomBar,
      backgroundColor: backgroundColor ?? theme.colorScheme.surfaceVariant,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(child: body),
    );
  }
}
