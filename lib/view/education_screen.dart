import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return      Container(
                  height:size.width<=840?size.width<=225?size.height*7:size.height*2.7: size.height * 1.2,
                  width: size.width,
                  color: Colors.grey[200],
                  child: Column(
                    children: [


                      if(size.width>195)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 30,
                            child: Image.asset("flower/cap.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "My",
                            style: TextStyle(
                                fontSize:size.width<=407?20: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Education",
                            style: TextStyle(
                                color: Color(0xff0066CC),
                                fontSize: size.width<=407?20:40,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
        
 if(size.width<195)
              Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 30,
                            child: Image.asset("flower/cap.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "My",
                            style: TextStyle(
                                fontSize:size.width<=407?20: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Education",
                            style: TextStyle(
                                color: Color(0xff0066CC),
                                fontSize: size.width<=407?20:40,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
        
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Education Is Not The Learning Of Facts, But The Training Of The Mind To Think",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 30,
                      ),

size.width<=840?
                                       Wrap(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: size.width<225?850: 440,
                            width:size.width<=920?420: 460,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                            
                              children: [
                                Container(
                                  height:270,
                                  width:size.width<=920?420: 460,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "data:image/jpeg;base64,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"),fit: BoxFit.fill)),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    
                                    children: [

                                      Row(
                                        children: [
                                          SizedBox(height: 20,),
                                           if(size.width>118)
                                          Text("Matric",style: TextStyle(color: Color(0xff01478C),fontSize: 35,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    if(size.width>390)
                                      Row(
                                        children: [
                                          Text("Hamayat-e-Islam Girls High School,Lahore",style: TextStyle(color: Colors.black,fontSize:size.width<=375?17: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                              
                              if(size.width<390)
                              
                                        Column(
                                        children: [
                                          Text("Hamayat-e-Islam Girls High School,Lahore",style: TextStyle(color: Colors.black,fontSize:size.width<=375?17: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                       SizedBox(height: 10,),

                                       if(size.width>226)
                                      Row(
                                        children: [
                                          Text("2020-2022 | Completed",style: TextStyle(color: Color(0xff1E78D2),fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),

if(size.width<226)
                                           Column(
                                        children: [
                                          Text("2020-2022 | Completed",style: TextStyle(color: Color(0xff1E78D2),fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                               
                                      
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        , 
                        SizedBox(height: 50,),
                        
                          Container(
                            height: size.width<225?1500:440,
                            width: size.width<=920?420:460,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                            
                              children: [
                                Container(
                                  height: 270,
                                  width:size.width<=920?420: 460,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "data:image/jpeg;base64,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"),fit: BoxFit.fill)),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    
                                    children: [
if(size.width>198)
                                      Row(
                                        children: [
                                          SizedBox(height: 20,),
                                           if(size.width>118)
                                          Text("ICS-Physics",style: TextStyle(color: Color(0xff01478C),fontSize: 34,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
if(size.width<198)

                                       Column(
                                        children: [
                                          SizedBox(height: 20,),
                                          Text("ICS-Physics",style: TextStyle(color: Color(0xff01478C),fontSize: 35,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                               
                               
                                    if(size.width>243)
                                      Row(
                                        children: [
                                          Text("Punjab Group of Colleges",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                             if(size.width<243)
                             
                                   Column(
                                        children: [
                                          Text("Punjab Group of Colleges",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                             
                             
                             
                                       SizedBox(height: 10,),
                                       if(size.width>224)
                                      Row(
                                        children: [
                                          Text("2022-2024 | Completed",style: TextStyle(color: Color(0xff1E78D2),fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
if(size.width<224)
                                        Column(
                                        children: [
                                          Text("2022-2024 | Completed",style: TextStyle(color: Color(0xff1E78D2),fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                  
                                      
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
         
        
                        ],
                      )
      :
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height:  440,
                            width:size.width<=920?420: 460,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                            
                              children: [
                                Container(
                                  height: 270,
                                  width:size.width<=920?420: 460,
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "data:image/jpeg;base64,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"),fit: BoxFit.fill)),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    
                                    children: [

                                      Row(
                                        children: [
                                          SizedBox(height: 20,),
                                          Text("Matric",style: TextStyle(color: Color(0xff01478C),fontSize: 35,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    
                                      Row(
                                        children: [
                                          Text("Hamayat-e-Islam Girls High School,Lahore",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                       SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Text("2020-2022 | Completed",style: TextStyle(color: Color(0xff1E78D2),fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                  
                                      
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ,   Container(
                            height: 440,
                            width: size.width<=920?420:460,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                            
                              children: [
                                Container(
                                  height: 270,
                                  width:size.width<=920?420: 460,
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "data:image/jpeg;base64,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"),fit: BoxFit.fill)),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    
                                    children: [

                                      Row(
                                        children: [
                                          SizedBox(height: 20,),
                                          Text("ICS-Physics",style: TextStyle(color: Color(0xff01478C),fontSize: 35,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    
                                      Row(
                                        children: [
                                          Text("Punjab Group of Colleges",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                       SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Text("2022-2024 | Completed",style: TextStyle(color: Color(0xff1E78D2),fontSize: 20,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                  
                                      
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
         
        
                        ],
                      )
                    ],
                  ),
                )
           ;
  }
}