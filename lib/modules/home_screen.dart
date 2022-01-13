import 'package:facebook_clone/components/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  List<String> avatarUrl =[
    'https://image.freepik.com/free-psd/book-mockup-with-shadow-overlay_23-2149209545.jpg'
  ];
  List<String> storyUrl =[
    'https://image.freepik.com/free-photo/emotional-bearded-male-has-surprised-facial-expression-astonished-look-dressed-white-shirt-with-red-braces-points-with-index-finger-upper-right-corner_273609-16001.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        // iconTheme: Icon(Icons.message),
        backgroundColor: Colors.black87,
        title: const Text(
          'Facebook',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.black87,
        child: Column(
          children: [
            Row(
              children: const[
                 CircleAvatar(
                  backgroundImage: NetworkImage('https://image.freepik.com/free-photo/emotional-bearded-male-has-surprised-facial-expression-astonished-look-dressed-white-shirt-with-red-braces-points-with-index-finger-upper-right-corner_273609-16001.jpg'),
                  radius: 26,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'What\'s in your mind ?',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 1.12,
              color: Colors.grey,
            ),
            Row(
              children: [
                actionButton(Icons.live_tv, 'live ', Colors.red),
                actionButton(Icons.image, 'Photo', Colors.green),
                actionButton(Icons.insert_emoticon, 'Feeling', Colors.yellow),
              ],
            ),
            // const Divider(
            //   thickness: 20,
            //   color: Colors.black54,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const[
                  Text('Audio and video rooms',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  MaterialButton(
                    child: const Text('Create room',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    ),
                    onPressed: (){},
                  color: Colors.blue.withOpacity(0.3),
                  ),
                  const SizedBox(width: 6,),



                  // ListView(
                  //   // scrollDirection: Axis.horizontal,
                  //   // shrinkWrap: true,
                  //   children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://image.freepik.com/free-photo/pensive-male-customer-looking-away_74855-3601.jpg'),
                      ),
                  //   ],
                  // ),
                ],
              ),
            ),


            Container(
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyTile(
                      avatarUrl[0],
                      storyUrl[0],
                      'mahmoud alwakeel',
                  ),
                  storyTile(
                    avatarUrl[0],
                    storyUrl[0],
                    'ahmed aly ',
                  ),
                  storyTile(
                    avatarUrl[0],
                    storyUrl[0],
                    'mariam ahmed',
                  ),
                  storyTile(
                    avatarUrl[0],
                    storyUrl[0],
                    'mahmoud alwakeel',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            feedBox(avatarUrl[0], 'mahmoud alwakeel', '10 min', 'building facebook clone')
          ],
        ),
      ),

    );
  }
}
