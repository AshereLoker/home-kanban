import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/features/export_kanban/presentation/bloc/export_kanban_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:home_challenge_kanban/features/timer/presentation/bloc/timer_bloc.dart';
import 'package:home_challenge_kanban/injection_container.dart' as di;
import 'package:home_challenge_kanban/injection_container.dart';
import 'package:home_challenge_kanban/main_page.dart';

import 'package:sizer/sizer.dart';
import 'package:sqlite3/open.dart';

import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  open.overrideFor(OperatingSystem.android, openCipherOnAndroid);

  di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => Sizer(
        builder: (context, orientation, deviceType) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<KanbansBloc>()
                ..add(
                  const KanbansEvent.initState(),
                ),
            ),
            BlocProvider(
              create: (context) => sl<TimerBloc>(),
            ),
            BlocProvider(
              create: (context) => sl<ExportKanbanBloc>(),
            ),
          ],
          child: MaterialApp(
            title: 'Kanbans List',
            theme: ThemeData(
              colorScheme: const ColorScheme(
                brightness: Brightness.dark,
                primary: Color(0xFFD0BCFF),
                onPrimary: Color(0xFF381E72),
                primaryContainer: Color(0xFF4F378B),
                onPrimaryContainer: Color(0xFFEADDFF),
                secondary: Color(0xFFCCC2DC),
                onSecondary: Color(0xFF332D41),
                secondaryContainer: Color(0xFF4A4458),
                onSecondaryContainer: Color(0xFFE8DEF8),
                tertiary: Color(0xFFEFB8C8),
                onTertiary: Color(0xFF492532),
                tertiaryContainer: Color(0xFF633B48),
                onTertiaryContainer: Color(0xFFFFD8E4),
                error: Color(0xFFF2B8B5),
                onError: Color(0xFF601410),
                errorContainer: Color(0xFF8C1D18),
                onErrorContainer: Color(0xFFF9DEDC),
                outline: Color(0xFF938F99),
                background: Color(0xFF1C1B1F),
                onBackground: Color(0xFFE6E1E5),
                surface: Color(0xFF1C1B1F),
                onSurface: Color(0xFFE6E1E5),
                surfaceVariant: Color(0xFF49454F),
                onSurfaceVariant: Color(0xFFCAC4D0),
                inverseSurface: Color(0xFFE6E1E5),
                onInverseSurface: Color(0xFF313033),
                inversePrimary: Color(0xFF6750A4),
                shadow: Color(0xFF000000),
                surfaceTint: Color(0xFFD0BCFF),
                outlineVariant: Color(0xFF49454F),
                scrim: Color(0xFF000000),
              ),
              useMaterial3: true,
            ),
            home: const MainScreen(),
          ),
        ),
      );
}
