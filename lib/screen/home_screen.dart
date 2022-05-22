import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widget/catagory_selector.dart';
import 'package:chat_ui/widget/fav_contact.dart';
import 'package:chat_ui/widget/resent_chat.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
        ),
        title: const Center(
          child: Text(
            "Chat",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const CatagorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: const [
                  FavritesContacts(),
                  RecentChat(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
