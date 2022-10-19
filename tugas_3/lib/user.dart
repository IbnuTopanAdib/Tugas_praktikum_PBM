import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 120),
                    child: Container(
                        color: Colors.green[100],
                        child: Image.asset(
                          'img/vivid.jpg',
                          width: double.infinity,
                          height: 180,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    top: 120,
                    child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.green[100],
                        backgroundImage: const AssetImage('img/iu.jpg')),
                  ),
                  Positioned(
                    left: 10,
                    top: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(5),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.amber,
                          ),
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: const [
                    Text(
                      'IU',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Edit Profile'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.privacy_tip),
                        title: Text('Privacy Policy'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
