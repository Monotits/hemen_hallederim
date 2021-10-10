import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: Center(
                  child: Image.asset(
                    'assets/hemenhallederim-home-logo.png',
                    scale: 1.4,
                  ),
                ),
              ),
              Container(height: 1, width: double.infinity, color: Colors.grey.shade300),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 420,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/home-customer-slide-bg-2.jpg"),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Binlerce Uzman',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Hemen ',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Elinin Altında',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Yerine ve zamanına sen karar ver.',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    ),
                    Text(
                      'Belirlediğin ihtiyacına uygun binlerce',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    ),
                    Text(
                      'hizmet veren arasında hemen',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    ),
                    Text(
                      'teklifini al.',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 50,
                        width: 260,
                        child: TextFormField(
                            decoration: InputDecoration(
                          labelText: "Neye ihtiyacın var?",
                          //fillColor: Colors.white,
                          suffixIcon: const Icon(
                            Icons.search,
                            size: 30,
                            color: Color(0xfffa7124),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: Color(0xfffa7124),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: Color(0xfffa7124),
                              width: 2.0,
                            ),
                          ),
                        ))),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Temizlik, Tadilat ,Nakliyat, Tamir, Özel Ders, Sağlık',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 11),
                    ),
                  ],
                ),
              ),
              Container(height: 1, width: double.infinity, color: Colors.grey.shade300),
              SizedBox(
                height: 150,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Erteleme! Üşenme! Vazgeçme!',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '2000\'den fazla hizmet başlığını sizler için\nsıraladık.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.grey.shade300), borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/yataymenu/cleaning.svg',
                                  height: 50,
                                  width: 50,
                                ),
                              )),
                        ),
                        Text(
                          'Temizlik ve Yardımcı\nHizmetler',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.grey.shade300), borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/yataymenu/customer-support.svg',
                                  height: 50,
                                  width: 50,
                                ),
                              )),
                        ),
                        Text(
                          'Tamirat Tadilat',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.grey.shade300), borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/yataymenu/hairdresser.svg',
                                  height: 50,
                                  width: 50,
                                ),
                              )),
                        ),
                        Text(
                          'Saç Kesimi ve Bakımı',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.grey.shade300), borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/yataymenu/law.svg',
                                  height: 50,
                                  width: 50,
                                ),
                              )),
                        ),
                        Text(
                          'Hukuki Hizmetler\nve Danışmanlık',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.grey.shade300), borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/yataymenu/pet.svg',
                                  height: 50,
                                  width: 50,
                                ),
                              )),
                        ),
                        Text(
                          'Evcil Hayvan Tedavi ve\nBakım Hizmetleri',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const Text(
                'Profesyonel hizmet mi almak istiyosun?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: 200,
                          height: 10,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xfffa7124)),
                          child: const Center(
                            child: Text(
                              'Temizlik',
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: 200,
                          height: 10,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xfffa7124)),
                          child: const Center(
                            child: Text(
                              'Tamirat',
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: 200,
                          height: 10,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xfffa7124)),
                          child: const Center(
                            child: Text(
                              'Danışmanlık',
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: 200,
                          height: 10,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xfffa7124)),
                          child: const Center(
                            child: Text(
                              'Saç Bakımı',
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: 200,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xfffa7124)),
                          child: const Center(
                            child: Text(
                              'Özel Ders',
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.grey.shade700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Image.network(
                        'https://www.freeiconspng.com/uploads/facebook-logo-png-white-facebook-logo-png-white-facebook-icon-png--32.png',
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Image.network(
                        'https://www.freeiconspng.com/uploads/facebook-logo-png-white-facebook-logo-png-white-facebook-icon-png--32.png',
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Image.network(
                        'https://www.freeiconspng.com/uploads/facebook-logo-png-white-facebook-logo-png-white-facebook-icon-png--32.png',
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Image.network(
                        'https://www.freeiconspng.com/uploads/facebook-logo-png-white-facebook-logo-png-white-facebook-icon-png--32.png',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 80,
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    '2019 - 2021 hemenhallederim bir PB İnşaat Bilişim Turizm San. ve Tic. Ltd. Şti. tescilli markasıdır.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
