// import 'package:first_project/modules/screen/notification_screen.dart';
// import 'package:first_project/widgets/new_feed_card_widget.dart';
// import 'package:flutter/material.dart';

// class HomeScreenSliver extends StatefulWidget {
//   const HomeScreenSliver({super.key});

//   @override
//   State<HomeScreenSliver> createState() => _HomeScreenSliverState();
// }

// class _HomeScreenSliverState extends State<HomeScreenSliver> {
//   int _currentIndex = 0;

//   List<String> photo = [
//     'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%2F75a4a8f4-3874-11ea-ac3c-f68c10993b04?source=next-article&fit=scale-down&quality=highest&width=700&dpr=1',
//     'https://plus.unsplash.com/premium_photo-1682091992663-2e4f4a5534ba?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZSUyMHN0dWRlbnR8ZW58MHx8MHx8fDA%3D',
//     'https://thumbs.dreamstime.com/b/male-student-working-desk-chinese-school-26363958.jpg',
//     'https://as1.ftcdn.net/jpg/02/57/07/40/1000_F_257074046_HnOJVuJxaTnk9rCOatQjZcmpEd48lNjs.jpg',
//     'https://www.universityofcalifornia.edu/sites/default/files/styles/feature_banner_image/public/2022-01/2018_03_12_UCR_day1_post-79.jpg?h=0c170278&itok=6dn4jQxG',
//   ];

//   List<String> name = [
//     'Sithy Chamroeun',
//     'Vuthy Chundee',
//     'Dara Van',
//     'Visal Can',
//     'Sokha Teang',
//   ];

//   List<bool> status = [true, false, true, false, true];

//   List<String> tabBarTitle = ['New Feed', 'Video'];

//   List<String> videoImage = [
//     'https://images.pexels.com/videos/5512609/pexels-photo-5512609.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//     'https://www.shutterstock.com/shutterstock/videos/3744213623/thumb/1.jpg?ip=x480',
//   ];

//   List icon = [
//     Icons.favorite,
//     Icons.comment,
//     Icons.share,
//     Icons.more_horiz_rounded,
//   ];

//   List numberEng = ['6K', '86', '1.3K', ''];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: _buildBody);
//   }

//   // get _buildBody {
//   //   return DefaultTabController(
//   //     length: tabBarTitle.length,
//   //     child: CustomScrollView(
//   //       slivers: [
//   //         _buildAppBar,
//   //         // _currentIndex == 0 ? _buildNewFeed : _buildVideo,
//   //       ],
//   //     ),
//   //   );
//   // }

//   get _buildBody {
//     return DefaultTabController(
//       length: tabBarTitle.length,
//       child: NestedScrollView(
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           return [_buildAppBar];
//         },
//         body: _buildNewFeedNew,
//       ),
//     );
//   }

//   get _buildAppBar {
//     return SliverAppBar(
//       backgroundColor: Colors.transparent,
//       title: Text(
//         'Home Sliver Screen',
//         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//       ),
//       leading: Icon(Icons.menu, color: Colors.white),
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.settings, color: Colors.white),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.language, color: Colors.white),
//         ),
//         IconButton(
//           onPressed: () async {
//             await Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder:
//                     (context) => NotificationScreen(
//                       id: '168',
//                       title: 'Notification Screen Fake',
//                       filterLength: 1,
//                     ),
//               ),
//             );
//           },
//           icon: Icon(Icons.notifications, color: Colors.white),
//         ),
//       ],
//       expandedHeight: 120,
//       flexibleSpace: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.indigo, Colors.indigo.shade900],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//           borderRadius: BorderRadius.vertical(bottom: Radius.circular(33)),
//         ),
//         alignment: Alignment.bottomCenter,
//         height: 230,
//         child: SizedBox(
//           height: 50,
//           child: TabBar(
//             dividerColor: Colors.transparent,
//             labelColor: Colors.white,
//             indicatorColor: Colors.white,
//             unselectedLabelColor: Colors.white.withValues(alpha: 0.5),
//             onTap: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             tabs: List.generate(
//               tabBarTitle.length,
//               (index) => Tab(text: tabBarTitle[index]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   get _buildNewFeedNew {
//     return TabBarView(
//       children: [
//         ListView.builder(
//           padding: EdgeInsets.zero,
//           itemCount: photo.length,
//           itemBuilder: (context, index) {
//             return NewFeedCardWidget(
//               profileName: name[index],
//               duration: '${5 + index}min .',
//               profilePhoto: photo[0],
//               photo: photo[index],
//               isPrivate: status[index],
//             );
//           },
//         ),
//         Container(),
//       ],
//     );
//   }

//   get _buildNewFeed {
//     return SliverList.builder(
//       itemCount: photo.length,
//       itemBuilder: (context, index) {
//         return NewFeedCardWidget(
//           profileName: name[index],
//           duration: '${5 + index}min .',
//           profilePhoto: photo[0],
//           photo: photo[index],
//           isPrivate: status[index],
//         );
//       },
//     );
//   }

//   get _buildVideo {
//     return SliverFillViewport(
//       viewportFraction: 1.0,
//       delegate: SliverChildBuilderDelegate((context, index) {
//         return Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(videoImage[index]),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircleAvatar(
//                     radius: 18,
//                     child: Icon(Icons.skip_previous_rounded),
//                   ),
//                   SizedBox(width: 20),
//                   CircleAvatar(
//                     radius: 25,
//                     child: Icon(Icons.play_arrow_rounded),
//                   ),
//                   SizedBox(width: 20),
//                   CircleAvatar(
//                     radius: 18,
//                     child: Icon(Icons.skip_next_rounded),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: 20,
//               left: 20,
//               child: Text(
//                 'Video',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 20,
//               right: 20,
//               child: Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.search, color: Colors.white, size: 30),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.person, color: Colors.white, size: 30),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               right: 20,
//               child: Column(
//                 children: List.generate(
//                   icon.length,
//                   (i) => Column(
//                     children: [
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(icon[i], color: Colors.white, size: 33),
//                       ),
//                       Text(
//                         numberEng[i],
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       }, childCount: videoImage.length),
//     );
//   }
// }
