import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/ic_header.jpg'),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.4)
                        ]
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('What kind of hotel you need?',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    // #TextField
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                            border: InputBorder.none,
                            hintText: 'Search for hotels...',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Business Hotels', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem('assets/images/ic_hotel1.jpg', 'Hotel 1'),
                        makeItem('assets/images/ic_hotel2.jpg', 'Hotel 2'),
                        makeItem('assets/images/ic_hotel3.jpg', 'Hotel 3'),
                        makeItem('assets/images/ic_hotel4.jpg', 'Hotel 4'),
                        makeItem('assets/images/ic_hotel5.jpg', 'Hotel 5'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text('Luxury Hotels', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem('assets/images/ic_hotel5.jpg', 'Hotel 1'),
                        makeItem('assets/images/ic_hotel4.jpg', 'Hotel 2'),
                        makeItem('assets/images/ic_hotel3.jpg', 'Hotel 3'),
                        makeItem('assets/images/ic_hotel2.jpg', 'Hotel 4'),
                        makeItem('assets/images/ic_hotel1.jpg', 'Hotel 5'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem(image, title){
    return AspectRatio(
      aspectRatio: 3.0 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2)
                    ]
                )
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(color: Colors.white, fontSize: 20),),
              ],
            )
        ),
      ),
    );

  }

}