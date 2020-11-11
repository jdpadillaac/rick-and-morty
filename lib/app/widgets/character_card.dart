import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/pages/cahracter_detail/character_detail_view.dart';
import 'package:rick_and_morty/app/utils/size_config.dart';
import 'package:rick_and_morty/domain/entities/character.dart';

class CharacterCard extends StatelessWidget {
  final Character item;
  final String image;
  final String name;
  final String specie;
  const CharacterCard({
    Key key,
    @required this.image,
    @required this.name,
    @required this.specie,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (_) {
          return CharacterDetail(character: item);
        },
      )),

      // onTap: () => Navigator.pushNamed(context, CharacterDetail.routeName),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: getProportionateScreenWidth(160),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Image.network(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF343434).withOpacity(0.5),
                      Color(0xFF343434).withOpacity(0.2),
                      Color(0xFF343434).withOpacity(0.05),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      specie,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Maculino',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      height: getProportionateScreenWidth(30),
                      width: getProportionateScreenWidth(60),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          'Humano',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
