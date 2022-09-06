import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      bottomNavigationBar: GNav(
  rippleColor: Colors.grey,
  hoverColor: Colors.grey,
  haptic: true,
  tabBorderRadius: 15,
  tabActiveBorder: Border.all(color: Colors.black, width: 1),
  tabBorder: Border.all(color: Colors.grey, width: 1),
  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], 
  curve: Curves.easeOutExpo, 
  duration: Duration(milliseconds: 900),
  gap: 8, 
  color: Colors.grey[800], 
  activeColor: Colors.purple,
  iconSize: 24, 
  tabBackgroundColor: Colors.purple.withOpacity(0.1), 
  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
  tabs: [
    GButton(
      icon: Icons.delivery_dining,
      text: 'Delivery',
    ),
    GButton(
      icon: Icons.percent,
      text: 'Offers',
    ),
    GButton(
      icon: Icons.wallet,
      text: 'Money',
    ),
    GButton(
      icon: Icons.book,
      text: 'History',
    )
  ]
),
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
       centerTitle: true,
  leading: 
    
       Icon(Icons.location_on,color: Colors.red[400]),
      

    

  title: Text("Location",style: TextStyle(color: Colors.black),),
  actions: [
    
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.person,color: Colors.red[400]),
    ),
  ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            
            child: Center(
              child: Container(
                width: 350,
                
                child: Column(
                
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                    SizedBox(height: 10,),
                    const TextField(
                      
                      decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.red,),
                        suffixIcon: Icon(Icons.mic,color: Colors.red,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),SizedBox(height: 5,),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Container(height: 20,padding: EdgeInsets.all(2),
                            child: Text("Sort"),
                                    
                            ),
                            SizedBox(width: 5,),
                            Container(height: 20,padding: EdgeInsets.all(2),
                            child: Text("Fast Delivery"),),
                              SizedBox(width: 5,),
                            Container(height: 20,padding: EdgeInsets.all(2),
                            child: Text("Rating 4.0+"),),  SizedBox(width: 5,),
                            Container(height: 20,padding: EdgeInsets.all(2),
                            child: Text("New Arrivals"),),  SizedBox(width: 5,),
                            Container(height: 20,padding: EdgeInsets.all(2),
                            child: Text("Pure Veg"),),  SizedBox(width: 5,),
                            Container(height: 20,padding: EdgeInsets.all(2),
                            child: Text("Cuisines"),),  SizedBox(width: 5,),
                            Container(height: 20,padding: EdgeInsets.all(2),
                            child: Text("More"),),
                          ],
                        ),
                      ),
                    ),SizedBox(height: 20,),
                    Container(
                      height: 100,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue[400]
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Offers",style: TextStyle(fontSize: 30,),),
                          Text("up to 60% off, deal of the day and\n other great offers")
                        ],
                      )),
                      SizedBox(height: 20,),

                      Container(
                        width: double.infinity,
                        height:220 ,
                        
                        child: Column(
                          children: [
                            Text("ZOMATO"),
                            Text("Festive\n  feast",style: TextStyle(fontSize: 60,color: Colors.red),),
                            Text("17th AUG-16th SEP"),
                            OutlinedButton(
                              
                              style: ButtonStyle(
                              
                              ),
                              onPressed: (){}, child: Text("Tap to Explore all Exciting offers",style: TextStyle(color: Colors.red),))
                          ],
                        ),
                      ),SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsetsDirectional.all(10)  ,                     
                         width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 226, 217, 107),
                Color.fromARGB(255, 227, 62, 62),
              ],
            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PLACE YOUR FIRST ORDER &GET",style: TextStyle(color: Colors.white,fontSize: 12),),
                            Text("Up to 60 % OFF +\nCashback",style: TextStyle(color: Colors.white,fontSize: 30),),
                            Text("cashback up to ₹100 as Zomato Credits",style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),
                      )
                    
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
