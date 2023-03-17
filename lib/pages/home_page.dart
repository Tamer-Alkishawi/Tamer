import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.teal.shade500,
          size: 28,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Home',
          style: GoogleFonts.cairo(
            fontWeight: FontWeight.bold,
            color: Colors.teal.shade500,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal.shade800),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('images/user_avatar.jpg'),
              ),
              accountName: const Text(
                'Anas Mekky',
              ),
              accountEmail: const Text(
                'anasmekky1@gmail.com',
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Future.delayed(
                      const Duration(milliseconds: 500),
                      () {
                        Navigator.pushNamed(context, '/list_page');
                      },
                    );
                  },
                  leading: const Icon(
                    Icons.layers,
                    size: 28,
                    color: Color(0xFFFF694D),
                  ),
                  title: const Text(
                    'List Page',
                    style: TextStyle(
                      color: Color(0xFFFF694D),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      wordSpacing: 3,
                      letterSpacing: 2,
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFFF694D),
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Future.delayed(
                        const Duration(milliseconds: 500),
                        () {
                          Navigator.pushNamed(
                            context,
                            '/list_page',
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 500,
                ),
                ListTile(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  leading: Icon(
                    Icons.logout,
                    size: 34,
                    color: Colors.teal.shade500,
                  ),
                  title: Text(
                    '  Exit',
                    style: GoogleFonts.cairo(
                      color: Colors.teal.shade500,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      wordSpacing: 3,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: Image.asset('images/on_street.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ON',
                style: GoogleFonts.palanquinDark(
                    color: const Color(0xFFFF694D),
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                    letterSpacing: 5),
              ),
              Text(
                'STREET',
                style: GoogleFonts.palanquinDark(
                    color: Colors.teal.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    letterSpacing: 5),
              ),
            ],
          ),
          Text(
            'It\'s a cars company that you will find all types of cars',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
              color: Colors.teal.shade500,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
