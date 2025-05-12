
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/views/user_list/widget/Custom_container.dart';

import '../../utils/color.dart';



class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "WhatsApp",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              )),
        ],

      ),
      body: ListView.builder(
               itemCount: 10,
               itemBuilder: (context,index){
                 return Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                   child: Column(
                     children: [
                       ListTile(
                         leading: CustomContainer(
                   borderRadius: BorderRadius.circular(100),
                     containerColor: AppColor.greenColor,
                     height: 50,
                     width: 50,
                     child: Center(child: Text("R",style: TextStyle(
                         color: AppColor.whiteColor,
                         fontSize: 18,
                         fontWeight: FontWeight.bold
                     ),))),

                         title: Text("Name",style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w900
                         ),),
                         subtitle: Text("01772632***"),

                       ),

                     ],
                   ),
                 );
               },

             )








    );
  }
}
