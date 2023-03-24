import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(),
        child: WhatsAppStatusPage(),
      ),
    ),
  );
}

class WhatsAppStatusPage extends StatefulWidget {
  const WhatsAppStatusPage({Key? key}) : super(key: key);

  @override
  _WhatsAppStatusPageState createState() => _WhatsAppStatusPageState();
}

class _WhatsAppStatusPageState extends State<WhatsAppStatusPage> {
  List<String> _statusList = [
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1405304177/photo/mature-man-using-mobile-phone-at-home.jpg?s=1024x1024&w=is&k=20&c=YGeiQtrgADqfwfneVZcRuGZ-l5hRSCTFu-xzOo9KFdc=',
    'https://media.istockphoto.com/id/1405304177/photo/mature-man-using-mobile-phone-at-home.jpg?s=1024x1024&w=is&k=20&c=YGeiQtrgADqfwfneVZcRuGZ-l5hRSCTFu-xzOo9KFdc=',
    'https://media.istockphoto.com/id/1405304177/photo/mature-man-using-mobile-phone-at-home.jpg?s=1024x1024&w=is&k=20&c=YGeiQtrgADqfwfneVZcRuGZ-l5hRSCTFu-xzOo9KFdc=',
  ];
  List<String> _statusList1 = [
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1405304177/photo/mature-man-using-mobile-phone-at-home.jpg?s=1024x1024&w=is&k=20&c=YGeiQtrgADqfwfneVZcRuGZ-l5hRSCTFu-xzOo9KFdc=',
    'https://media.istockphoto.com/id/1405304177/photo/mature-man-using-mobile-phone-at-home.jpg?s=1024x1024&w=is&k=20&c=YGeiQtrgADqfwfneVZcRuGZ-l5hRSCTFu-xzOo9KFdc=',
    'assets/status5.jpg',
  ];
  List<String> _recentStatusList = [
    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('New group'),
                ),
                PopupMenuItem(
                  child: Text('New broadcast'),
                ),
                PopupMenuItem(
                  child: Text('WhatsApp Web'),
                ),
                PopupMenuItem(
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  child: Text('Settings'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFF075E54),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                        Text(
                          'Camera',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Chats',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Status',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Calls',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
            onTap: () {},
          ),
          Container(
            height: 30,
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text('Recent updates'),
                  Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _statusList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(_statusList1[index]),
                      ),
                      title: Text('Alkesh Raj '),
                      subtitle: Text('Today, 2:05 PM'),
                      onTap: () {
// View status logic
                      },
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: 30,
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text('Viewed updates'),
                  Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _statusList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(_statusList[index]),
                      ),
                      title: Text('Alkesh Raj  $index '),
                      subtitle: Text('Today, 2:05 PM'),
                      onTap: () {
// View status logic
                      },
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
