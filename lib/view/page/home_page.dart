import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_finder/view/page/movie_detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final imagesurl = [
    'https://www.edutvhindi.club/wp-content/uploads/2022/05/Doctor-Strange-2.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8m3IkZPDDKKiJS1ygDgjFM2PSQlisET-jv-xr7dzv0g9oqCyJIX6UlpR1pbWn4Jyyoqc&usqp=CAU',
    'https://w0.peakpx.com/wallpaper/593/742/HD-wallpaper-avatar-2-the-way-of-water-banner.jpg',
    'https://cdn.kalingatv.com/wp-content/uploads/2021/01/kgf-chapter-2-Youtube.jpg',
  ];

  final menuList = [
    {
      'icon': Icons.widgets_outlined,
      'title': 'Genre',
    },
    {
      'icon': Icons.tv_outlined,
      'title': 'TV Series',
    },
    {
      'icon': Icons.movie_outlined,
      'title': 'Movies',
    },
    {
      'icon': Icons.theaters_outlined,
      'title': 'In Theatre',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final searchTextController = TextEditingController();
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top screen
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Wellcome note
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hello,',
                              style: GoogleFonts.muli(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' Daizy',
                              style: GoogleFonts.muli(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Search Box
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x1e6b66a6),
                          Color(0x1e75d1dd),
                        ],
                      ),
                    ),
                    child: TextField(
                      style: GoogleFonts.muli(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      controller: searchTextController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: Colors.white54,
                          size: 32,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white60,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white38,
                            width: 0.0,
                          ),
                        ),
                        label: Text(
                          'Search',
                          style: GoogleFonts.muli(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Popular Section
                  Text(
                    'Most Popular',
                    style: GoogleFonts.muli(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 170,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(
                  seconds: 7,
                ),
                autoPlayAnimationDuration: const Duration(
                  seconds: 1,
                ),
              ),
              itemCount: imagesurl.length,
              itemBuilder: (_, index, realIndex) {
                return InkWell(
                  onTap: () {
                    Get.to(() => MovieDetailsPage());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          imagesurl[index],
                        ),
                      ),
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0x00121212),
                          Color(0xff121212),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            // Featured Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                menuList.length,
                (index) => MenuBtns(
                  title: '${menuList[index]['title']}',
                  icon: menuList[index]['icon'] as IconData,
                ),
              ),
            ),
            // Releases
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Upcoming releases',
                style: GoogleFonts.muli(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 230,
                viewportFraction: 0.55,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(
                  seconds: 7,
                ),
                autoPlayAnimationDuration: const Duration(
                  seconds: 1,
                ),
              ),
              itemCount: imagesurl.length,
              itemBuilder: (_, index, realIndex) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        imagesurl[index],
                      ),
                    ),
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0x00121212),
                        Color(0xff121212),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuBtns extends StatelessWidget {
  const MenuBtns({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 80,
      width: 70,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0x1EA6A1E0),
            Color(0x1EA1F3FE),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
