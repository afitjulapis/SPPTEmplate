import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var cyberYellow = Color(0xFFFFD301);
    var americanYellow = Color(0xFFF1B900);
    var cetaBlue = Color(0xFF0C005B);
    var navyblue = Color(0xff030081);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: w * 0.04,
              ),
              Text(
                'Tips',
                style: TextStyle(
                  color: cetaBlue,
                  fontFamily: 'spbold',
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Container(
            height: h * 0.15,
            width: w * 0.9,
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: h * 0.0,
                    ),
                    Container(
                      height: h * 0.1,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              colors: [Colors.purpleAccent, Colors.blue],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset: Offset(0, 5),
                                color: Colors.grey)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Tips Cepat Botak',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'spbold',
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              width: w * 0.6,
                              child: Text(
                                'Kurangkan rambut anda!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'spartan',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: w * 0.2,
                      child: Image.asset('assets/images/some.png'),
                    ),
                    SizedBox(
                      width: w * 0.04,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: h*0.04,),
          Container(
            width: w * 0.8,
            child: Text(
              'Tips #1 Jangan basuh rambut anda dengan air panas. Sebaliknya basuh rambut anda dengan air sejuk.Tips #2 Urut kulit kepala anda. Jangan hanya meraba–raba kepala anda. Sebaliknya urut seperti anda urut pada bahagian badan yang lain. Urutan pada bahagian kepala boleh menghasilkan rambut yang lebat dan kuat. Buktinya, ada kedai gunting rambut mamak dan salon mengurut kepala pelanggan mereka untuk lebatkan rambut.Tips #3Untuk lebatkan rambut, anda perlu makan banyak makanan yang mengandungi vitamin A dan vitamin D.Tips #4 Makan banyak sayur–sayuran dan buah–buahan. Sayur dan buah mengandungi vitamin B6, zink dan magnesium di mana ia penting untuk memberi kekuatan kepada rambut anda. Rambut anda akan lebat apabila rambut anda kuat.Tips #5 Amalkan makan habbatus sauda sekurang-kurangnya secubit sehari. Atau boleh dapatkan kapsul ekstrak habbatus-sauda dipasaran.Tips #6Amalkan senaman pada setiap hari atau tiga kali seminggu. Senaman akan kurangkan rasa tekanan dan melancarkan aliran darah di dalam badan. Rambut anda akan lebat apabila anda kurang tekanan atau stress. Aliran darah yang lancar juga membantu rambut anda untuk jadi sihat dan tumbuh lebat.Tips #7Tip2 lebatkan rambut berikutnya adalah kurangkan minum minuman yang mengandungi kafein dan banyakkan minum air kosong dan jus buah–buahan.Tips #8 Elakkan menggunakan syampu yang mengandungi terlalu banyak bahan kimia. Bahan kimia seperti yang kita tahu akan memberi kesan yang teruk kepada rambut anda. Disyorkan memakai syampu bayi yang lembut, kerana bahan kimia sangat minimum Tips #9Keringkan rambut selepas mandi. Jangan biarkan rambut anda berada dalam keadaan basah selepas anda mandi. Sebaliknya, keringkan rambut anda. Jika anda ingin pakai topi, topi keledar, tudung atau apa sahaja yang bakal menutup kepala anda, pastikan rambut anda sudah kering sepenuhnya.Tips #10Elakkan menggunakan pengering rambut dengan alat pengering dalam keadaan rambut terlalu basah dan pada suhu yang tinggi. Tips #11Jangan sesekali warnakan rambut atau membenarkan bahan kimia di gunakan terhadap rambut anda. Bahan kimia akan merosakkan rambut anda dalam jangka masa panjang.Tips #12Petua untuk jaga kesihatan rambut yang seterusnya adalah anda bersihkan rambut anda dengan baik setiap kali mandi. Cara untuk bersihkan rambut dengan baik adalah anda bersihkan keseluruhan rambut anda iaitu daripada akar rambut sehingga ke hujung rambut.Tips #13Jika rambut anda jenis yang halus atau mudah rosak, bilas rambut (setelah bersyampu) dengan ekstrak habbatus sauda dan air. Campurkan 1 cawan air dengan 1 sudu ekstrak habbatus sauda atau minyak kelapa dara/kepala santan.Tips #14Untuk mengurangkan keguguran rambut, tambah satu sudu minyak kelapa dara bersama satu sudu ekstrak habbatus sauda kedalam segelas air dan urutkan ke kulit kepala setiap hari.Tips #15Untuk mengawal kelemumur, urutkan segenggam campuran tepung naik ( baking soda ) dan 1sudu habbatus sauda ke atas rambut dan kulit kepala. Ia akan menyerap minyak yang berlebihan dan melonggarkan sel kulit mati yang menyebabkan kelemumur. Then, bilas dengan bersih.',
              style: TextStyle(
                color: cetaBlue,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
