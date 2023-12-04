import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nahal_it/aiden/log_in_one.dart';
// import 'package:nahal_it/aiden/splash_screen.dart';
import 'package:nahal_it/cart_provider.dart';
// import 'package:nahal_it/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'widgets.dart';
// import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(360, 690),
//       builder: (context, child) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         // تعریف تم برنامه
//         theme: ThemeData(
//           fontFamily: 'Sahel',
//           // تعریف رنگ اصلی برنامه
//           primaryColor: const Color.fromARGB(255, 60, 158, 22),
//         ),
//         // تعریف صفحه اصلی برنامه
//         home: const HomeScreen(),
//       ),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

//AppLocale.title.getString(context);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Cart(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // localization.getLanguageName(languageCode: 'fa');  // farsi
          // localization.getLanguageName(languageCode: 'ar');  // arabic

          // localization.getLanguageName();  // get language name depend on current app locale
          // supportedLocales: localization.supportedLocales,
          // localizationsDelegates: localization.localizationsDelegates,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),

          home: const Scaffold(
            // drawer: Drawer(
            //   // صدا زدن رنگ پس زمینه از themeData
            //   backgroundColor: Colors.deepPurple,
            //   child: DrawerBook(),
            // ),
            body: //CartScreen()
                //  SellingPage(),
                HomeScreen(),
            //   SplashScreen(),
            // LogInOne(),
          ),
        );
      }),
    );
  }
}
