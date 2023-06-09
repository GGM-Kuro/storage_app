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
                  TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Apptheme.secondary,
                  labelStyle: Apptheme.appstyle(24, Apptheme.primary, FontWeight.bold),
                  unselectedLabelColor: Colors.grey.withOpacity(0.3),
                  tabs:const[
                          Tab(text: 'Men shoes',),
                          Tab(text: 'Women shoes',),
                          Tab(text: 'Kids shoes',),
                          ]),
// WARNING: 43:04
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.265),
                    child: TabBarView(
                        controller: _tabController,
                        children: [
                        Column(
                            children: [
                            Container(
                            height: MediaQuery.of(context).size.height*0.45,
                            color: Colors.amber,
                                )
                            ],
                            ),
                        Column(
                            children: [
                            Container(
                            height: MediaQuery.of(context).size.height*0.45,
                            color: Colors.amber,
                                )
                            ],
                            )
                        ]
                    ),
                  )
                  ],
                  ),
                  )
              );
  }
}
