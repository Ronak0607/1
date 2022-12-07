import 'package:flutter/material.dart';
import 'package:loginscreen/Screen/ViewScreen/Log_In_Screen.dart';

import 'Sign_Up_Screen.dart';

class tabbarScreen extends StatefulWidget {
  const tabbarScreen({Key? key}) : super(key: key);

  @override
  State<tabbarScreen> createState() => _tabbarScreenState();
}

class _tabbarScreenState extends State<tabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFCECECE),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              color: Colors.green,
              child: Opacity(
                opacity: 0.3,
                  child: Image.network('https://wallpaperaccess.com/full/242893.jpg',fit: BoxFit.cover,)),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Container(
                  height:MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: TabBar(
                          tabs: [
                            Tab(text: 'LOGIN',),
                            Tab(text: 'SIGNUP',),
                          ],
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.green,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        // AppBar
                        body: TabBarView(
                          children: [LoginScreen(), SignUpScreen()],
                        ), // TabBarView
                      ), // Scaffold
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
