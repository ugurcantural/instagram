import 'package:flutter/material.dart';
import 'package:instagram/post_add.dart';
import 'package:instagram/user_add.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading kısıtlı alan aldığı için title'a verdik Logoyu
        leading: const Icon(Icons.camera_alt_outlined, color: Colors.black87),
        //Logo
        title: Row(
          children: [
            Image.asset('assets/images/instagram_logo.png', width: 100),
          ],
        ),
        //İcons
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.favorite_border, size: 28),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.message_outlined, size: 28),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Widgets - UserAdd
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  AddUser(
                    imgPath: 'keanu_reeves.jpg',
                    userName: 'keanu_reeves',
                    colorName: Colors.grey,
                    colorStory: Colors.blue,
                    iconvar: true,
                  ),
                  AddUser(
                    imgPath: 'margot_robbie.jpg',
                    userName: 'margot_robbie',
                  ),
                  AddUser(
                    imgPath: 'quentin_tarantino.jpg',
                    userName: 'quentin_tarantino',
                  ),
                  AddUser(
                    imgPath: 'monica_bellucci.jpg',
                    userName: 'monica_bellucci',
                  ),
                  AddUser(
                    imgPath: 'salma_hayek.jpg',
                    userName: 'salma_hayek',
                  ),
                  AddUser(
                    imgPath: 'mad_mikkelsen.jpg',
                    userName: 'mad_mikkelsen',
                  ),
                  AddUser(
                    imgPath: 'uma_thurman.jpg',
                    userName: 'uma_thurman',
                  ),
                ],
              ),
            ),
            //Posts
            const AddPost(
              userName: 'keanu_reeves',
              imgProfile: 'keanu_reeves.jpg',
              imgPost: 'keanu_post.jpg',
              description: 'john wick 4',
            ),
            const AddPost(
              userName: 'quentin_tarantino',
              imgProfile: 'quentin_tarantino.jpg',
              imgPost: 'tarantino_post.jpg',
              description: '#tbt HollyWood :)',
            ),
            const AddPost(
              userName: 'margot_robbie',
              imgProfile: 'margot_robbie.jpg',
              imgPost: 'margot_robbie.jpg',
              description: 'description :)',
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.red,
                    size: 100,
                  ),
                  Text(
                    'You Are All Caught Up',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text('View Older Post'))
                ],
              ),
            ),
          ],
        ),
      ),
      //altbar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.add_box_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.favorite_outline),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
