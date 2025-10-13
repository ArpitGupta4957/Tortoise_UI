import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tortoise_ui/application/product/product_bloc.dart';
import 'package:tortoise_ui/locator.dart';
import 'package:tortoise_ui/presentation/router/route.dart';
import 'package:tortoise_ui/presentation/theme/theme_data.dart';
import 'package:tortoise_ui/presentation/core/widgets/precache_images.dart';

Future<void> initialSetup() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
}

void runAppWith() {
  runApp(const App());
}

final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(
  ThemeMode.system,
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductBloc>(create: (context) => locator<ProductBloc>()),
      ],
      child: ValueListenableBuilder<ThemeMode>(
        valueListenable: themeModeNotifier,
        builder: (context, mode, _) {
          return MaterialApp.router(
            routerConfig: goRouter,
            theme: appThemeData,
            darkTheme: appDarkThemeData,
            themeMode: mode,
            title: 'Tortoise UI',
            debugShowCheckedModeBanner: false,
            builder: (context, child) => GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: PrecacheImages(child: child ?? const SizedBox()),
            ),
          );
        },
      ),
    );
  }
}
