import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigatorBawah(),
      body: Stack(
        children: [
          Image.asset('assets/background.png'),
        _InformasiPengguna(),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 180,),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
              ),
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 50,),

                    _LabelBerita(), 
                    _ListBerita(),

                    SizedBox(height: 40,),

                    Wrap(
                      children: [
                        _TombolMenu(
                          image: Image.asset('assets/icon1.png',
                          width: 60,),
                        ),
                        _TombolMenu(
                          image: Image.asset('assets/icon2.png',
                          width: 60,),
                        ),
                        _TombolMenu(
                          image: Image.asset('assets/icon3.png',
                          width: 60,),
                        ),

                    ],
                    ),
                    ElevatedButton(
                      
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (bc){
                            return DashboardView();                         
                         } )); 
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text('Login'),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)), backgroundColor: Colors.green 
                        ),
                     ),
                                           
                    
                  ],
                ),
              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}

class _TombolMenu extends StatelessWidget {
  final Image? image;
  const _TombolMenu({
    Key? key,
    this.image    
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Image.asset('assets/icon1.png', width: 60,),
        ),
    );
  }
}

class _LabelBerita extends StatelessWidget {
  const _LabelBerita();

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text('Berita'),),
    );
  }
}

class _ListBerita extends StatelessWidget {
  const _ListBerita();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset('assets/berita1.png', height: 120,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset('assets/berita2.png', height: 120,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset('assets/berita3.png', height: 120,),
              ),
            ],
          ),
        ),
      );
  }
}

class NavigatorBawah extends StatelessWidget {
  const NavigatorBawah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.house),
          label: 'Home', 
          ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.newspaper),
          label: 'Berita', 
          ),
          BottomNavigationBarItem(
            icon:Icon(FontAwesomeIcons.gear), 
            label: 'Pengaturan'
            ),
      ], 
      );
  }
}

class _InformasiPengguna extends StatelessWidget {
  const _InformasiPengguna();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/user.png'),
          
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
               mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selamat Datang, Yusuf',
            style: TextStyle(fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white
        ),
        ),
          Text('yusuf234@gmailcom',
          style: TextStyle(fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white
        ),
        ),
        ],
        ), 
        ),
          Image.asset('assets/edit.png', width: 60,),
        ],
      ),
    );
  }
}