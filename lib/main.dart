import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menalup/core/utils/size_utils.dart';
import 'package:menalup/routes/app_routes.dart';
import 'package:menalup/theme/theme_helper.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'mentalup',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.screen5,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
