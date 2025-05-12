import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/color.dart';
import '../AllChatList/chat_list_page.dart';
import '../FavouritePage/favourite_page.dart';
import '../GroupPage/group_page.dart';
import '../UnreadChatList/unread_chat_page.dart';
import '../user_list/user_list_screen.dart';





class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
          bottom: TabBar(
            labelColor: AppColor.greenColor,
            unselectedLabelColor: AppColor.whiteColor,
            indicatorColor: AppColor.whiteColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            tabs: [
              Tab(
          child: Container(
            height: size.height * .05,
            width: size.width * .25,
            decoration: BoxDecoration(
              color: AppColor.whiteShade,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Text("All",)),
          ),
              ),
              Tab(
                child: Container(
                  height: size.height * .05,
            width: size.width * .25,
                  decoration: BoxDecoration(
                    color: AppColor.whiteShade,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("Unread",)),
                ),
              ),
              Tab(
                child: Container(
                  height: size.height * .05,
                  width: size.width * .25,
                  decoration: BoxDecoration(
                    color: AppColor.whiteShade,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("Favourites",
                  maxLines: 1,
                  )),
                ),
              ),
              Tab(
                child: Container(
                  height: size.height * .05,
                  width: size.width * .25,
                  decoration: BoxDecoration(
                    color: AppColor.whiteShade,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("Groups",)),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.greenColor,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>UserListScreen()));
          },
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
        body: TabBarView(children: [
          ChatListPage(),
          UnreadChatPage (),
          FavouritePage(),
          GroupPage(),
        ]),
      ),
    );
  }
}


