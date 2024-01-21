import 'package:flutter/material.dart';

import '../../common/glass_morphism.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/bg.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Steps Counter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: GlassMorhism(
                blur: 1,
                opacity: 0.1,
                child: SizedBox(
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                         
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 15),
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: CircularProgressIndicator(
                                        value: 0.50,
                                        strokeWidth:
                                            8, // Adjust the thickness of the circle
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(Colors
                                                .white), // Set progress color to white
                                        backgroundColor: Colors
                                            .black, // Set background color to black
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '10,00', //
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Steps', // Replace with the actual value you want to display
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 SizedBox(
                            height: 20,
                          ),
                          Text('100 Steps', style: TextStyle(color: Colors.white, fontSize: 15,),),
                             SizedBox(
                            height: 10,
                          ),
                                Container(
                                  height: 50,
                                 decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(10),
                                 ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/wheel.png',
                                         width: 40,
                                      height: 40,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Open 1', style: TextStyle(fontSize: 20, color: Colors.white,),),
                                         SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                
                                ),
                                
                                SizedBox(
                                  height: 10,
                                ),
                                   Text('1000 Steps', style: TextStyle(color: Colors.white, fontSize: 15,),),
                             SizedBox(
                            height: 10,
                          ),
                                  Container(
                                  height: 50,
                                 decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(10),
                                 ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/wheel.png',
                                         width: 40,
                                      height: 40,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Open 2', style: TextStyle(fontSize: 20, color: Colors.white,),),
                                         SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),     
                        ],
                        
                      ),
                      
                      
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                    padding: const EdgeInsets.only(left: 20, top: 50),
                    child: Text('History of Week', style: TextStyle(color: Colors.white, fontSize: 22, ),),
                  ),
            SizedBox(
              height: 20,
            ),
            Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Monday', style: TextStyle(color: Colors.white, fontSize: 18, ),),
                  ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('', style: TextStyle(color: Colors.white, fontSize: 18, ),),
                  ),
                  SizedBox(width: 10,),
                  Text('Complete 1000 steps ',  style: TextStyle(color: Colors.white, fontSize: 18, ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

