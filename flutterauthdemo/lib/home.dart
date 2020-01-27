import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterauthdemo/provider/user_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  bool usbool = false;
  List<String> userNames = [];
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Logout",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            onPressed: () {
              user.signOut();
            },
          ),
        ],
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('user').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return new Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                DocumentSnapshot document = snapshot.data.documents[index];
                var uid = document['uid'];
                var messages = document['name'];

                if (uid == user.uid) {
                  userNames.add('');
                  usbool = true;
                } else {
                  userNames.add(messages);
                  usbool = false;
                }
                return usbool
                    ? Container(
                        height: 0,
                      )
                    : ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Text(
                          userNames[index],
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      );
              });
        },
      ),
    );
  }
}
