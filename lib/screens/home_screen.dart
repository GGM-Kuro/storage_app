import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:storage_app/themes/app_theme.dart';
import 'package:storage_app/widgets/widgets.dart';

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
            backgroundColor: const Color(0xFFE2E2E2),
            body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
                  children: [
                  Container(
                  padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                  height: MediaQuery.of(context).size.height*0.4,
                  decoration: const BoxDecoration(

                  image: DecorationImage(image: AssetImage('assets/images/top_image.png'),fit: BoxFit.fill)
                      ),
                  child: Container(
                  padding: const EdgeInsets.only(left: 8,bottom: 15),
                  width: MediaQuery.of(context).size.width,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Athletics Shoes',style: Apptheme.appstyleWithHt(42, Apptheme.secondary, FontWeight.bold, 1.2),),
                    Text('Collection',style: Apptheme.appstyleWithHt(42, Apptheme.secondary, FontWeight.bold, 1.2),),
                    TabBar(
                        padding: EdgeInsets.zero,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: Apptheme.appstyle(24, Apptheme.primary, FontWeight.bold),
                        unselectedLabelColor: Colors.grey.withOpacity(0.3),
                        tabs:const[
                              Tab(text: 'Men shoes',),
                              Tab(text: 'Women shoes',),
                              Tab(text: 'Kids shoes',),
                              ]),
                    ],
                        ),
                  ),

                      ),
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25),
                    child: Container(
                      padding: const EdgeInsets.only(left: 12),
                      child: TabBarView(
                          controller: _tabController,
                          children: [
                              Column(
                                  children: [
                                  SizedBox(
                                  height: MediaQuery.of(context).size.height*0.42,
                                  child: ListView.builder(
                                    itemCount: 6,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                        return const ProductCard(
                                            name: 'Teclado Mecanico',
                                            category: 'shoes',
                                            id: '22351',
                                            price: '\$200.000',
                                            image: 'https://picsum.photos/80/60?grayscale'
                                        );
                                    }),
                                      ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(12,20,12,20),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                    Text('Lastest Shoes',style: Apptheme.appstyle(24, Apptheme.primary,FontWeight.bold),),
                                    Row(
                                        children: [
                                            Text('Show All',style: Apptheme.appstyle(22, Apptheme.primary, FontWeight.w500),),
                                            const Icon(Ionicons.caret_forward_outline, size: 20,)
                                        ],
                                    )
                                        ],
                                    ),
                                  ),
                                ],
                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context).size.height*0.13,
                                                child: ListView.builder(
                                    itemCount: 6,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration:  const BoxDecoration(
                                                borderRadius:  BorderRadius.all(Radius.circular(16)),
                                                    boxShadow:[
                                                        BoxShadow(
                                                    color: Colors.black12,
                                                    blurRadius: 1.3,
                                                    offset: Offset(3, 3),
                                                    spreadRadius: 1
                                                    )
                                                    ]
                                                ),
                                            height: MediaQuery.of(context).size.height* 0.12,
                                            width: MediaQuery.of(context).size.width*0.28,
                                            child: const ClipRRect(
                                                borderRadius:  BorderRadius.all(Radius.circular(16)),
                                                child: FadeInImage(
                                                    placeholder: AssetImage('assets/images/no-image.png'),
                                                    image: NetworkImage('https://picsum.photos/400/300'),
                                                    fit: BoxFit.cover,
                                                )
                                            ) ,
                                          ),
                                        );
                                    }),

                                              )
                              ],
                              ),
                          Column(
                              children: [
                              Container(
                              height: MediaQuery.of(context).size.height*0.405,
                              color: Colors.green,
                                  )
                              ],
                              ),
                          Column(
                              children: [
                              Container(
                              height: MediaQuery.of(context).size.height*0.45,
                              color: Colors.yellow,
                                  )
                              ],
                              )
                          ]
                      ),
                    ),
                  )
                  ],
                  ),
                  )
              );
  }
}
