import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/search_screen.dart';
import 'screens/upload_post_screen.dart';


void main()
{
    runApp(InstagramCloneApp() as Widget);
    
}

class InstagramCloneApp extends StatelessWidget {
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

    @override
    _MainScreenState createState() => _MainScreenState();

}
class _MainScreenState extends State<MainScreen>{
  int _SelectedIndex = 0;
  final List<Widget> _screens =[
    HomeScreen(),
     SearchScreen(),
    UploadPostScreen(),
    ProfileScreen(),
    

  ];
  void _onTapped(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }
  @override
  Widget build (BuildContext context){
    return Scaffold(
        body: _screens[_SelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedIndex,
        onTap: _onTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "post"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),

        ], 
        ),

    );
  }
  
}