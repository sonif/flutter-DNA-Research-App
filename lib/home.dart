import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22185D),
      appBar: AppBar(
        title: Text('Medical Card'),
        backgroundColor: Color(0xFF22185D),
        elevation: 0,
        actions: [Icon(Icons.notifications)],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
            color: Color(0xff402b7d),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage('https://via.placeholder.com/150'),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Helen Young',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Female, 26 years old',
                            style: TextStyle(
                              color: Color(0xffa391d9),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '216 Calhoun St., Los Angeles',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '(800) 321-174',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Research history',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CardCustom(
            color: Color(0xfffddb69),
            icon: Icons.priority_high,
            text: 'Healt Analysis',
          ),
          CardCustom(
            color: Color(0xff81d7e0),
            icon: Icons.check,
            text: 'Parteninty Test',
          ),
          CardCustom(
            color: Color(0xff81d7e0),
            icon: Icons.check,
            text: 'Trait Report',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF22185D),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff79719c),
            ),
            label: '',
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff79719c),
            ),
            label: '',
            activeIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Color(0xff79719c),
            ),
            label: '',
            activeIcon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              color: Color(0xff79719c),
            ),
            label: '',
            activeIcon: Icon(
              Icons.description,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
              color: Color(0xff79719c),
            ),
            label: '',
            activeIcon: Icon(
              Icons.grid_view,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CardCustom extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const CardCustom({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff402b7d),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            Card(
              color: color,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Icon(
                  icon,
                  size: 18,
                ),
              ),
            ),
            SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
