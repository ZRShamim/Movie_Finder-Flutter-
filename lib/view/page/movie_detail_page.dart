import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../root_page.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text =
        'When the Dark Elves attempt to plunge the universe into darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane Foster. Thousands of years ago, a race of beings known as Dark Elves tried to send the universe into darkness by using a weapon known as the Aether. Warriors from Asgard stopped them, but their leader Malekith (Christopher Eccleston) escaped to wait for another opportunity. The warriors find the Aether, and since it cannot be destroyed, they try to hide it. In the present day, Jane Foster (Natalie Portman) awaits the return of Thor (Chris Hemsworth), although it has been two years since they last saw once another. In the meantime, Thor has been trying to bring peace to the nine realms. Jane discovers an anomaly similar to the one that brought Thor to Earth. She goes to investigate, finds a wormhole, and is sucked into it. Back on Asgard, Thor wishes to return to Earth, but his father, Odin (Sir Anthony Hopkins), refuses to let him. Thor learns from Heimdall (Idris Elba), who can see into all of the realms, that Jane disappeared. Thor then returns to Earth just as Jane reappears. However, when some Policemen try to arrest her, an unknown energy repulses them. Thor then brings Jane to Asgard to find out what happened to her. When the energy is released again, they discover that when Jane disappeared, she crossed paths with the Aether and it entered her. Malekith, upon sensing that the time to strike is now, seeks out the Aether. He attacks Asgard and Thor\'s mother Frigga (Rene Russo) is killed protecting Jane. Odin wants to keep Jane on Asgard so that Malekith will come. Thor disagrees with his plan, so with his cohorts, he decides to take Jane away. He enlists the aid of his brother, Loki (Tom Hiddleston). Unfortunately, Loki\'s motivations remain unknown.';
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2B5876),
              Color(0xff4E4376),
            ],
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Image.network(
                'https://comic-cons.xyz/wp-content/uploads/thor-marvel-movies.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: Container(
                padding: const EdgeInsets.all(20),
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff2B5876),
                      Color(0xff4E4376),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Thor',
                      style: GoogleFonts.muli(
                        fontSize: 64,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'The Dark World',
                      style: GoogleFonts.muli(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Chip(
                              backgroundColor: Colors.blueGrey[300],
                              label: Text(
                                'Action',
                                style: GoogleFonts.muli(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Chip(
                              backgroundColor: Colors.blueGrey[300],
                              label: Text(
                                '16+',
                                style: GoogleFonts.muli(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Chip(
                              backgroundColor: Colors.amber,
                              label: Text(
                                'IMDB 8.5',
                                style: GoogleFonts.muli(
                                  fontSize: 12,
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                                color: Colors.blueGrey[100],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.blueGrey[100],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ReadMoreText(
                      text,
                      trimCollapsedText: 'More',
                      moreStyle: TextStyle(
                        color: Colors.blue[300],
                      ),
                      trimExpandedText: 'Less',
                      textAlign: TextAlign.justify,
                      trimLines: 3,
                      trimMode: TrimMode.Line,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cast',
                          style: GoogleFonts.muli(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          'See all',
                          style: GoogleFonts.muli(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 60,
                            margin: index == 0 || index == 4
                                ? EdgeInsets.only(
                                    right: index == 0 ? 10 : 0,
                                    left: index == 4 ? 10 : 0)
                                : const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 58,
                                  height: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Chris Hemsworth',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.muli(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Thor',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.muli(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.transparent,
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2B5876),
              Color(0xFF4E4376),
            ],
          ),
          border: Border(
            top: BorderSide(
              color: Colors.white12,
              width: 1,
            ),
          ),
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BottomNavBarItem(0, Icons.home_outlined),
              BottomNavBarItem(1, Icons.favorite_outlined),
              BottomNavBarItem(2, Icons.confirmation_number_outlined),
              BottomNavBarItem(3, Icons.person_outline_outlined),
              BottomNavBarItem(4, Icons.share_outlined),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem(
    this.index,
    this.icon, {
    Key? key,
  }) : super(key: key);

  final int index;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.offAll(
          () => RootPage(
            i: index,
          ),
        );
      },
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
