import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/home_bloc/home_bloc.dart';
import 'package:flutter_application_messege/src/presentation/pages/main/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  /// first page
  static MaterialPageRoute main() => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => HomeBloc()..add(const HomeEvent.hotelDetail()),
          child: const MainPage(),
        ),
      );
}
