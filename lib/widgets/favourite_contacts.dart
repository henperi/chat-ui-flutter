import 'package:chat_ui/mocks/favourites.mock.dart';
import 'package:chat_ui/screens/chat.screen.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favourite Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.blueGrey,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favourites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favourites[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(favourites[index].imageUrl),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            favourites[index].name,
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
