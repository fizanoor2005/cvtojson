import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
       bool isMobile = size.width < 600;

    return 
 Container(
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: isMobile ? 20 : 60,
          ),
          width: size.width,
          color: const Color(0xffE5ECFB),
          child: Column(
            children: [
               if (size.width > 120)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffE5ECFB),
                    radius: 30,
                    child: const Icon(
                      Icons.headset_mic,
                      color: Colors.black,
                      size: 38,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    
                    child: 
                   
                    
                    Text(
                      "Get in",
                      style: TextStyle(
                        fontSize: isMobile ? 28 : 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      "Touch",
                      style: TextStyle(
                        fontSize: isMobile ? 28 : 40,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff0066CC),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: isMobile ? 20 : 30),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: isMobile ? 20 : 60,
                ),
                width: isMobile ? double.infinity : size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    isMobile
                        ? Column(
                            children: [
                             TextField(
                                           cursorColor: Color(0xff7E19AF),
                                          decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.person,color:Color(0xff7E19AF) ,size: 25,),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xff7E19AF),width: 2)),
                                            //                                       focusedBorder: OutlineInputBorder(
                                            // borderSide: BorderSide(color: Colors.green, width: 2),
                                            // border: InputBorder.none,
                                            border: OutlineInputBorder(),
                                            hintText: "Name",
                                            hintStyle: TextStyle(
                                                color: Colors.black),
                                            filled: true,
                                            fillColor: Color(0xffE5ECFB),
                                          ),
                                        ),
                                      
                              const SizedBox(height: 20),
                               
                                         TextField(
                                          cursorColor: Color(0xff7E19AF),
                                          decoration: InputDecoration(

                                            prefixIcon: Icon(Icons.mail,color:Color(0xff7E19AF) ,size: 25,),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xff7E19AF),width: 2)),
                                            //                                       focusedBorder: OutlineInputBorder(
                                            // borderSide: BorderSide(color: Colors.green, width: 2),
                                            // border: InputBorder.none,
                                            border: OutlineInputBorder(),
                                            hintText: "Email Address",
                                            hintStyle: TextStyle(
                                                color: Colors.black),
                                            filled: true,
                                            fillColor: Color(0xffE5ECFB),
                                          ),
                                        ),
                                      
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(child: TextField(
                                           cursorColor: Color(0xff7E19AF),
                                          decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.person,color:Color(0xff7E19AF) ,size: 25,),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xff7E19AF),width: 2)),
                                            //                                       focusedBorder: OutlineInputBorder(
                                            // borderSide: BorderSide(color: Colors.green, width: 2),
                                            // border: InputBorder.none,
                                            border: OutlineInputBorder(),
                                            hintText: "Name",
                                            hintStyle: TextStyle(
                                                color: Colors.black),
                                            filled: true,
                                            fillColor: Color(0xffE5ECFB),
                                          ),
                                        ),

                              ),
                              const SizedBox(width: 20),
                              Expanded(child: TextField(
                                          cursorColor: Color(0xff7E19AF),
                                          decoration: InputDecoration(

                                            prefixIcon: Icon(Icons.mail,color:Color(0xff7E19AF) ,size: 25,),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xff7E19AF),width: 2)),
                                            //                                       focusedBorder: OutlineInputBorder(
                                            // borderSide: BorderSide(color: Colors.green, width: 2),
                                            // border: InputBorder.none,
                                            border: OutlineInputBorder(),
                                            hintText: "Email Address",
                                            hintStyle: TextStyle(
                                                color: Colors.black),
                                            filled: true,
                                            fillColor: Color(0xffE5ECFB),
                                          ),
                                        ),),
                            ],
                          ),
                    const SizedBox(height: 20),
                
                 Container(
                                    height: 120.0, // Pass custom height here
                                    width: double
                                        .infinity, // Pass custom width here
                                    child: TextField(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ), // User text color
                                       cursorColor: Color(0xff7E19AF),
                                      cursorHeight: 20,
                                      cursorWidth: 1,
                                      decoration: InputDecoration(
                                         filled: true,
                                            fillColor: Color(0xffE5ECFB),
                                            prefixIcon: Icon(Icons.message,color:Color(0xff7E19AF) ,size: 25,),

                                        hintText:
                                            " Message", // Pass your hint here
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                        ), // Hint text color (grey)
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 130,
                                        ), // Hint starts from top-left
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff373737),
                                          ), // Default (grey)
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),

                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                             color: Color(0xff7E19AF),width: 2,
                                          ), // Red on focus
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),

                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            
                                          ), // Yellow while typing (if using validation)
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),

                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                             color: Color(0xff7E19AF),width: 2
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),

                    const SizedBox(height: 10),

                    if(size.width>170)
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            color: const Color(0xff0066CC),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                             
                             
                             
                              Text(
                                "Submit",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.send_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                   if(size.width<170)
                 
                     Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Expanded(
                          child: Container(
                            height: 60,
                            width: 130,
                            decoration: BoxDecoration(
                              color: const Color(0xff0066CC),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            
                            child:
                            
                            
                             Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:  [
                               
                               
                               
                                Text(
                                  "Submit",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:size.width<250?10: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                 if (size.width > 137)
                                Icon(
                                  Icons.send_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
      
      
                  ],
                ),
              ),
            ],
          ),
        );
      






// Container(
//        padding:   const EdgeInsets.only(top: 30,
//                     left: 60,
//                     right: 60),
//         height: size.height *1.3,
//                   width: size.width,
//                   color: Color(0xffE5ECFB),

//                   child: Column(

//                     children: [
//                                     Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                             backgroundColor: Color(0xffE5ECFB),
//                             radius: 30,
//                             child:Icon(Icons.headset_mic,color: Colors.black,size: 38,)
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             "Get in",
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             "Touch",
//                             style: TextStyle(
//                                 color: Color(0xff0066CC),
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 30,)
// ,
// Container(
//    padding:   const EdgeInsets.only(top: 80,
//                     left: 60,
//                     right: 60),
//   height: size.height*0.6,
//   width: size.width*0.7,
  
 
//  decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(20)),
//  child: Column(
//   children: [
//                     Row(
//                                     children: [
//                                       SizedBox(
//                                         width: 10,
//                                       ),
//                                       Container(
//                                         height: 70,
//                                         width: 400,
//                                         decoration: const BoxDecoration(),
//                                         child: TextField(
//                                            cursorColor: Color(0xff7E19AF),
//                                           decoration: InputDecoration(
//                                               prefixIcon: Icon(Icons.person,color:Color(0xff7E19AF) ,size: 25,),
//                                             focusedBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                     color: Color(0xff7E19AF),width: 2)),
//                                             //                                       focusedBorder: OutlineInputBorder(
//                                             // borderSide: BorderSide(color: Colors.green, width: 2),
//                                             // border: InputBorder.none,
//                                             border: OutlineInputBorder(),
//                                             hintText: "Name",
//                                             hintStyle: TextStyle(
//                                                 color: Colors.black),
//                                             filled: true,
//                                             fillColor: Color(0xffE5ECFB),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 20,
//                                       ),
//                                       Container(
//                                         height: 70,
//                                         width: 400,
//                                         decoration: const BoxDecoration(),
//                                         child: TextField(
//                                           cursorColor: Color(0xff7E19AF),
//                                           decoration: InputDecoration(

//                                             prefixIcon: Icon(Icons.mail,color:Color(0xff7E19AF) ,size: 25,),
//                                             focusedBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                     color: Color(0xff7E19AF),width: 2)),
//                                             //                                       focusedBorder: OutlineInputBorder(
//                                             // borderSide: BorderSide(color: Colors.green, width: 2),
//                                             // border: InputBorder.none,
//                                             border: OutlineInputBorder(),
//                                             hintText: "Email Address",
//                                             hintStyle: TextStyle(
//                                                 color: Colors.black),
//                                             filled: true,
//                                             fillColor: Color(0xffE5ECFB),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 20,
//                                   ),



//                  Container(
//                                     height: 120.0, // Pass custom height here
//                                     width: double
//                                         .infinity, // Pass custom width here
//                                     child: TextField(
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                       ), // User text color
//                                        cursorColor: Color(0xff7E19AF),
//                                       cursorHeight: 20,
//                                       cursorWidth: 1,
//                                       decoration: InputDecoration(
//                                          filled: true,
//                                             fillColor: Color(0xffE5ECFB),
//                                             prefixIcon: Icon(Icons.message,color:Color(0xff7E19AF) ,size: 25,),

//                                         hintText:
//                                             " Message", // Pass your hint here
//                                         hintStyle: TextStyle(
//                                           color: Colors.black,
//                                         ), // Hint text color (grey)
//                                         contentPadding: EdgeInsets.symmetric(
//                                           horizontal: 30,
//                                           vertical: 130,
//                                         ), // Hint starts from top-left
//                                         enabledBorder: OutlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0xff373737),
//                                           ), // Default (grey)
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),

//                                         focusedBorder: OutlineInputBorder(
//                                           borderSide: BorderSide(
//                                              color: Color(0xff7E19AF),width: 2,
//                                           ), // Red on focus
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),

//                                         focusedErrorBorder: OutlineInputBorder(
//                                           borderSide: BorderSide(
                                            
//                                           ), // Yellow while typing (if using validation)
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),

//                                         border: OutlineInputBorder(
//                                           borderSide: BorderSide(
//                                              color: Color(0xff7E19AF),width: 2
//                                           ),
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),
//                                       ),
//                                     ),
//                                   ),




//                                   // Container(
//                                   //   height: 120.0, // Pass custom height here
//                                   //   width: double
//                                   //       .infinity, // Pass custom width here
//                                   //   child: TextField(
//                                   //     style: TextStyle(
                                        
//                                   //       color: Color(0xffE5ECFB),
//                                   //     ), // User text color
//                                   //     cursorColor: Color.fromARGB(255, 167, 103, 199),
//                                   //         decoration: InputDecoration(
                                            
//                                   //             prefixIcon: Icon(Icons.message,color:Color(0xff7E19AF) ,size: 25,),
//                                   //           focusedBorder: OutlineInputBorder(
//                                   //               borderSide: BorderSide(
//                                   //                   color: Color(0xff7E19AF),width: 2)),
//                                   //           //                                       focusedBorder: OutlineInputBorder(
//                                   //           // borderSide: BorderSide(color: Colors.green, width: 2),
//                                   //           // border: InputBorder.none,
//                                   //           border: OutlineInputBorder(),
//                                   //           hintText: "Message",
//                                   //           hintStyle: TextStyle(
//                                   //               color: Colors.black),
//                                   //           filled: true,
//                                   //           fillColor: Color(0xffE5ECFB),
//                                   //         ),
//                                   //   ),
//                                   // ),

//                                   SizedBox(
//                                     height: 10,
//                                   ),

//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Container(
//                                           height: 60,
//                                           width: 130,
//                                           decoration: BoxDecoration(
//                                             color: Color(0xff0066CC),
//                                             border: Border.all(
//                                               color: Color(0xff0066CC)
//                                             ),
//                                             borderRadius: BorderRadius.circular(
//                                               5,
//                                             ),
//                                             // color: Colors.amber,
//                                           ),
//                                           child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceEvenly,
//                                             children: [
                                            
//                                               Text(
//                                                 "Submit",
//                                                 style: TextStyle(
//                                                    fontWeight: FontWeight.bold,
//                                                 fontSize: 20,
//                                                 color: Colors.white
//                                                 ),
                                               
//                                                 ),
//                                                   Icon(
//                                                 Icons.send_rounded,
//                                                 color: Colors.white,
//                                                 size: 25,
//                                               ),
                                              
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),

//   ],
//  ),
  

// )           
//                     ],
//                   ),

//     );
  }
}




