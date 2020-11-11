import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/pages/home/widgets/character_cards.dart';
import 'package:rick_and_morty/app/pages/home/widgets/home_header.dart';
import 'package:rick_and_morty/app/utils/size_config.dart';

class HomeView extends StatelessWidget {
  static String routeName = 'homeView';
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenWidth(15)),
                HomeHeader(),
                SizedBox(height: getProportionateScreenWidth(20)),
                CharacterCards()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
