import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'home1.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool isHome = false;

  void _IsHome() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      isHome = !isHome;
      if (isHome == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HalamanHome(),
        ));
      }
    });
    prefs.setBool('isbool', isHome);
  }

  _getIsHome() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      isHome = prefs.getBool('isbool') ?? isHome;
      if (isHome == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HalamanHome(),
        ));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getIsHome();
  }

  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
            children: [
              Container(
                  color: HexColor('#3742fa'),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('img/Social Page.png'),
                        const Text('Flora',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text(
                              'Aplikasi flora adalah aplikasi yang menggunakan framework flutter yang merupakan framework cross platform seperti React Native',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: HexColor('#dfe4ea'))),
                        )
                      ])),
              Container(
                  color: HexColor('#1e90ff'),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('img/Finance.png'),
                        const Text('Penelasan flora',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text(
                            'Aplikasi flora adalah aplikasi yang dibuat dengan menggunakan Design UI yang didapatkan dari website Behance.net',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: HexColor('#dfe4ea')),
                          ),
                        )
                      ])),
              Container(
                  color: HexColor('#70a1ff'),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('img/Startup.png'),
                        const Text('Beli Bunga Di Flora',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text(
                              'Aplikasi flora merupakan aplikasi penjualan bouquet dan bunga yang nantinya akan dikembangkan lebih lanjut',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: HexColor('#dfe4ea'))),
                        )
                      ])),
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? Container(
                color: Colors.white,
                height: 80,
                child: Center(
                  child: TextButton(
                    onPressed: _IsHome,
                    child: const Text('MULAI', style: TextStyle(fontSize: 24)),
                  ),
                ),
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => controller.jumpToPage(2),
                      child: const Text('SKIP'),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        onDotClicked: (index) => controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                      ),
                    ),
                    TextButton(
                      onPressed: () => controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: const Text('NEXT'),
                    ),
                  ],
                ),
              ));
  }
}
