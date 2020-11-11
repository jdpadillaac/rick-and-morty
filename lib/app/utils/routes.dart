import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/pages/cahracter_detail/character_detail_view.dart';
import 'package:rick_and_morty/app/pages/home/home_view.dart';
import 'package:rick_and_morty/app/pages/welcome/welcome_view.dart';

final Map<String, WidgetBuilder> appRoutes = {
  WelcomePage.routeName: (_) => WelcomePage(),
  HomeView.routeName: (_) => HomeView(),
  CharacterDetail.routeName: (_) => CharacterDetail()
};
