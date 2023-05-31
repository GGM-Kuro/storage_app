import 'package:flutter/material.dart';
import 'package:storage_app/themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  late final TabController _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
      return Scaffold(
              body: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                  children: [
                  Container(
                  padding: EdgeInsets.fromLTRB(16, 45, 0, 0),
                  height: MediaQuery.of(context).size.height*0.4,
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/top_image.jpg'),fit: BoxFit.fill)
                      ),
                  child: Container(
                  padding: EdgeInsets.only(left: 8,bottom: 15),
                  width: MediaQuery.of(context).size.width,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Athletics Shoes',style: Apptheme.appstyleWithHt(42, Apptheme.secondary, FontWeight.bold, 1.2),),
                    Text('Collection',style: Apptheme.appstyleWithHt(42, Apptheme.secondary, FontWeight.bold, 1.2),),
                    ],
                        ),
                  ),

                      ),
// WARNING: 36:42
                  ],
                  ),
                  )
              );
  }
}
