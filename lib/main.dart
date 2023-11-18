import 'package:flutter/material.dart';
import 'package:nahal_it/news_page.dart';
import 'package:nahal_it/selling_page.dart';

import 'aiden/splash_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//AppLocale.title.getString(context);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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

      home: // SellingPage()
          // NewsPage()
          Scaffold(
              appBar: AppBar(
                //backgroundColor: Colors.green,
                toolbarHeight: 80,
                title: const SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Icon(Icons.search_rounded),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                  ),
                ),
                leadingWidth: size.width / 5,
                leading: Row(
                  children: [
                    const SizedBox(width: 5),
                    Builder(builder: (context) {
                      return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(Icons.menu));
                    }),
                    const Icon(Icons.shopping_cart_rounded),
                  ],
                ),
              ),
              body: HomeScreen()),
      //SplashScreen(),
    );
  }
}
