import 'package:flutter/material.dart';
import 'package:loginn/dash_view.dart';
import 'package:loginn/global_colors.dart';
import 'package:loginn/pesan.dart';
import 'package:loginn/profile_view.dart';
import 'package:loginn/riwayat_view.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int _selectedTabIndex = 0;

  void _onNavbarTapped(int index){
    setState(() {
       _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listpage = <Widget>[
      const DashboardView(),
      const HistoryView(),
      const PesanView(),
      const ProfileView()
    ];

    final bottomNavbarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home'
        ),

        const BottomNavigationBarItem(
        icon: Icon(Icons.list_alt),
        label: 'Riwayat Transaksi'
        ),

        const BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Chat', 
        
        ),

        const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile'
        ),
    ];

    final bottomNarBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomNavbarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: GlobalColors.textColor,
      selectedItemColor: GlobalColors.mainColor,
      onTap: _onNavbarTapped,
      );

    return Scaffold(
      body: Center(
        child: listpage[_selectedTabIndex],
      ),
      bottomNavigationBar: bottomNarBar,
    );
  }
}