import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage ({ super.key });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  static final List<Widget> _pages = <Widget>[
    const _HomePage(),
    const Icon(
      Icons.directions,
      size: 150,
    ),
    const Icon(
      Icons.doorbell_outlined,
      size: 150,
    ),
    const Icon(
      Icons.account_circle,
      size: 150,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: 'Direction'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.doorbell_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
      ),
    );
  }


}

class _HomePage extends StatelessWidget{
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(33.65),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hello Anderson',
                    style: TextStyle(
                      fontSize: 17.305,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Have a nice day',
                    style: TextStyle(
                        fontSize: 11.54,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/avatar.jpg',
                ),
              ),
            ],
          ),
          Container(
            width: 293.22,
            height: 135.56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.0734),
              color: Colors.red,
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/gambar.jpg',
                  ),
                  fit: BoxFit.fitWidth
              ),
            ),
            child: CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: double.infinity,
                        alignment: AlignmentDirectional.bottomStart,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.0734),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 22.03,left: 22.11),
                          child: Text('text $i', style: const TextStyle(fontSize: 16.0,color: Colors.white),),
                        )
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Recomendation Article',
                style: TextStyle(
                  fontSize: 11.54,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                    'Show All',
                    style: TextStyle(
                        fontSize: 7.69,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBEDE61)
                    )
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 139.11,
                height: 200.93,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.34),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.08),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 122.91,
                        height: 128.63,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13.46),
                          child: Image.asset(
                            'assets/gambar.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 112.74,
                        height: 22.73,
                        child: Text(
                          'The 12 most intriguing animal discoveries of 2021',
                          style: TextStyle(
                            fontSize: 8.65,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.menu,size: 8.86,),
                          Text(
                            'READ',
                            style: TextStyle(
                                fontSize: 5.77,
                                fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 139.11,
                height: 200.93,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.34),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.08),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 122.91,
                        height: 128.63,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13.46),
                          child: Image.asset(
                            'assets/gambar.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 112.74,
                        height: 22.73,
                        child: Text(
                          'The 12 most intriguing animal discoveries of 2021',
                          style: TextStyle(
                            fontSize: 8.65,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.menu,size: 8.86,),
                          Text(
                            'READ',
                            style: TextStyle(
                                fontSize: 5.77,
                                fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Recomendation Article',
                style: TextStyle(
                  fontSize: 11.54,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                    'Show All',
                    style: TextStyle(
                        fontSize: 7.69,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBEDE61)
                    )
                ),
              )
            ],
          ),
          Container(
            width: 293.22,
            height: 90.37,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.61),
                color: Colors.grey
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 131.71,
                  height: 90.37,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.61),
                    child: Image.asset(
                      'assets/gambar.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 131,
                      height: 60,
                      child: Text(
                        'More animal species are getting COVID-19 for the first time',
                        style: TextStyle(
                            fontSize: 9.61,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.menu,size: 8.86,),
                        Text(
                          'READ',
                          style: TextStyle(
                              fontSize: 5.77,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}