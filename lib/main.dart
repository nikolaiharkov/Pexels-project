import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Pexels-project/Bloc/categoryWallpaperBloc.dart';
import 'package:Pexels-project/Bloc/searchWallpaperBloc.dart';
import 'package:Pexels-project/Bloc/wallpaperBloc.dart';
import 'package:Pexels-project/Screens/HomePage.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WallpaperBloc(),
      child: BlocProvider(
        create: (context) => SearchWallpaperBloc(),
        child: BlocProvider(
          create: (context) => CategoryWallpaperBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Pexels-project',
            theme: ThemeData(
                brightness: Brightness.light,
                cardColor: Colors.white38,
                accentColor: Colors.black,
                cursorColor: Colors.black,
                dialogBackgroundColor: Colors.white,
                primaryColor: Colors.white),
            // theme: ThemeData(
            //     brightness: Brightness.light,
            //     cardColor: Colors.white38,
            //     accentColor: Colors.black,
            //     cursorColor: Colors.black,
            //     dialogBackgroundColor: Colors.white,
            //     primaryColor: Colors.white),
            // darkTheme: ThemeData(
            //     brightness: Brightness.dark,
            //     accentColor: Colors.white,
            //     cursorColor: Colors.white,
            //     primaryColor: Colors.black,
            //     dialogBackgroundColor: Colors.black,
            //     cardColor: Colors.white38),
            home: MyHomePage('Pexels-project'),
          ),
        ),
      ),
    );
  }
}
