import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';
import 'package:flutter_moda_app/profil_list.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: const [
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 22)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 16)),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'ModaApp',
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 15),
        children: [
          //Üst taraftali profil listesi
          const ProfilList(),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            image: const DecorationImage(
                                image: AssetImage('assets/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '34 min ago',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'This ooficial website features a ribbed knit zipper jacket that  is'
                      ' modern anda stylish. It looks very temparent and is recommend friends',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Detay(
                                    imagePath: 'assets/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/modelgrid1.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Detay(
                                        imagePath: 'assets/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Detay(
                                        imagePath: 'assets/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid3.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.reply,
                            color: Colors.brown.withOpacity(0.2), size: 30),
                        const SizedBox(width: 5),
                        const SizedBox(width: 5),
                        Text(
                          '1.7K',
                          style: TextStyle(
                            fontFamily: 'MontSerrat',
                            fontSize: 16,
                            color: Colors.grey.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Icon(Icons.comment,
                            color: Colors.brown.withOpacity(0.2), size: 30),
                        const SizedBox(width: 5),
                        const SizedBox(width: 5),
                        Text(
                          '325',
                          style: TextStyle(
                            fontFamily: 'MontSerrat',
                            fontSize: 16,
                            color: Colors.grey.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              const SizedBox(width: 5),
                              const SizedBox(width: 5),
                              Text(
                                '2.3K',
                                style: TextStyle(
                                  fontFamily: 'MontSerrat',
                                  fontSize: 16,
                                  color: Colors.grey.withOpacity(0.7),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
