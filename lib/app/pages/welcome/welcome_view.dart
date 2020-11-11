import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/utils/size_config.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/fe0e83bff18ea7663158f726e6b75ab8.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Image.asset(
            'assets/images/Rick_and_Morty_logo.png',
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(180),
                ),
                Text(
                  'Bienvenido a la app de rick and morty',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('Continuar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
