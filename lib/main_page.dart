import 'package:flutter/material.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/app_scaffold.dart';
import 'package:home_challenge_kanban/core/ui/widgets/svg_asset_picture.dart';
import 'package:home_challenge_kanban/core/ui/widgets/circle_button_with_shadow.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/pages/kanbans_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ValueNotifier<int> _pageIndex = ValueNotifier<int>(0);

  @override
  void dispose() {
    _pageIndex.dispose();
    super.dispose();
  }

  final screens = [
    KanbansPage(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) => AppScaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: ValueListenableBuilder(
          valueListenable: _pageIndex,
          builder: (context, value, child) => screens.elementAt(value),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CircleButtonWithShadow(
          innerPadding: 6,
          buttonRadius: 30,
          buttonColor: Colors.redAccent.shade700,
          onTap: (context) {},
          child: SvgAssetPicture(
            assetName: KanbanAssets.ASSETS_SVG_IC_PLUS_SVG,
            size: 28,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: AppSize.bottomBarRadiusWidget,
          ),
          child: BottomNavigationBar(
            onTap: (index) => _pageIndex.value = index,
            useLegacyColorScheme: false,
            backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
            currentIndex: _pageIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: SvgAssetPicture(
                  assetName: KanbanAssets.ASSETS_SVG_IC_HOME_SVG,
                  size: 28,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                label: 'Board',
              ),
              BottomNavigationBarItem(
                icon: SvgAssetPicture(
                  assetName: KanbanAssets.ASSETS_SVG_IC_HISTORY_SVG,
                  size: 28,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                label: 'History',
              ),
            ],
          ),
        ),
      );
}
