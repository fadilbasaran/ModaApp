import 'package:flutter/material.dart';

class ProfilList extends StatelessWidget {
  const ProfilList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.blue,
      height: 140,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          const SizedBox(width: 25),
          listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
          const SizedBox(width: 25),
          listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
          const SizedBox(width: 25),
          listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          const SizedBox(width: 25),
          listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
          const SizedBox(width: 25),
          listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
          const SizedBox(width: 25),
          listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
          const SizedBox(width: 25),
          listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
          const SizedBox(width: 25),
          listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
          const SizedBox(width: 25),
        ],
      ),
    );

    //Card;
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            //ilk koyduğumuz eleman altta oluyor.diğer elemnlar bununn üstünde
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: const Center(
            child: Text(
              'Fallow',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
