import 'package:flutter/material.dart';

Widget actionButton(IconData icon, String buttonName, Color iconColor) {
  return Expanded(
    child: FlatButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(
        buttonName,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget storyTile(String avatarUrl, String storyUrl, String username) {
  return Container(
    height: 144,
    width: 120,
    margin: const EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      image: DecorationImage(
        image: NetworkImage(avatarUrl),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(storyUrl),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            username,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    ),
  );
}

Widget feedBox(
    String avatarUrl, String userName, String date, String contentText) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0), color: Colors.black26),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage('https://image.freepik.com/free-photo/emotional-bearded-male-has-surprised-facial-expression-astonished-look-dressed-white-shirt-with-red-braces-points-with-index-finger-upper-right-corner_273609-16001.jpg'),
                radius: 25.0,
              ),
              const SizedBox(
                width: 10,
              ),
              // IconButton(
              //     onPressed: (){},
              //     icon: Icon(
              //         Icons.more_horiz
              //     ),
              // ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          if (contentText != '')
            Text(
              contentText,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1.5,
            color: Colors.blueGrey,
          ),
          Row(
            children: [
              actionButton(Icons.thumb_up, 'like', Colors.grey),
              actionButton(Icons.comment, 'reply', Colors.grey),
              actionButton(Icons.share, 'share', Colors.grey),
            ],
          ),
        ],
      ),
    ),
  );
}
