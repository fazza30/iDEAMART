// ignore_for_file: non_constant_identifier_names

part of 'package:flutter_auth/view.dart';

class HomePage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF239BD8),
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1.1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Background(),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0 , 50, 0),
                      child: Header(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 55, 50, 0),
                      child: Jumbotron(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 165, 30, 0),
                      child: Container(
                        width: double.infinity,
                        height: 550,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Mandatory(gridCount: 3),
                            ChoiceBased(gridCount: 2),
                            // Padding(
                            //   padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            //   child: MyProgress(),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Mandatory extends StatelessWidget {
  final int gridCount;
  final HomeController homeController = Get.put(HomeController());

  Mandatory({
    required this.gridCount
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "Mandatory",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            )
          ),
        ),
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: gridCount,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: mandatoryMenuList.map((menu) {
            return InkWell(
              onTap: () {
                switch (menu.name) {
                  case 'Pengelola':
                    return homeController.handleGotoQuizPengelola();
                  case 'Media Sosial':
                    return homeController.handleGotoQuizMedsos();
                  case 'Milik Perusahaan':
                    return homeController.handleGotoQuizOrganisasi();
                  case 'Administrasi':
                    return homeController.handleGotoQuizAdministrasi();
                  case 'Event':
                    return homeController.handleGotoQuizEvent();
                  case 'Pengembangan Diri':
                    return homeController.handleGotoQuizPengembangan();
                }
              },
              child: Card(
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    menu.icon,
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    Text(
                      menu.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ),
            );
          }).toList()
        ),
      ],
    );
  }
}

class ChoiceBased extends StatelessWidget {
  final int gridCount;
  final HomeController homeController = Get.put(HomeController());

  ChoiceBased({
    required this.gridCount
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "Choice Based",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            )
          ),
        ),
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: gridCount,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: cbMenuList.map((menu) {
            return InkWell(
              onTap: () {
                switch (menu.name) {
                  case 'Servis Data':
                    return homeController.handleGotoQuizServis();
                  case 'Media Partner':
                    return homeController.handleGotoQuizMedia();
                }
              },
              child: Card(
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    menu.icon,
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    Text(
                      menu.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
              ),
            );
          }).toList()
        ),
      ],
    );
  }
}

// Widget MyProgress(BuildContext context) {
//   return Column(
//     mainAxisSize: MainAxisSize.max,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         'Progress Saya',
//         style: Theme.of(context).textTheme.headline1?.copyWith(
//           fontFamily: 'Poppins',
//           fontSize: 18,
//           fontWeight: FontWeight.bold
//         ),
//       ),
//       Padding(
//         padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Material(
//                 color: Colors.transparent,
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Container(
//                   width: 210,
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: Color(0xFFEEEEEE),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(45),
//                           child: SvgPicture.asset(
//                             'assets/icons/strongly-agree.svg',
//                             width: 50,
//                             height: 50,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(8, 5, 0, 5),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Survei Pengelola',
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                               Text(
//                                 '1 dari 4 pertanyaan',
//                                 style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                                   fontFamily: 'Poppins',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0, 5, 0, 0),
//                                 child: Stack(
//                                   children: [
//                                     Container(
//                                       width: 120,
//                                       height: 5,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFFEEEEEE),
//                                         borderRadius:
//                                             BorderRadius.circular(10),
//                                         border: Border.all(
//                                           color: Color(0xFFC4C4C4),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 80,
//                                       height: 5,
//                                       decoration: BoxDecoration(
//                                         color: Colors.green,
//                                         borderRadius:
//                                             BorderRadius.circular(10),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                 child: Material(
//                   color: Colors.transparent,
//                   elevation: 5,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Container(
//                     width: 210,
//                     height: 80,
//                     decoration: BoxDecoration(
//                       color: Color(0xFFEEEEEE),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(45),
//                             child: SvgPicture.asset(
//                               'assets/icons/agree.svg',
//                               width: 50,
//                               height: 50,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(8, 5, 0, 5),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Survei Pengelola',
//                                   style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold
//                                   ),
//                                 ),
//                                 Text(
//                                   '1 dari 4 pertanyaan',
//                                   style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 5, 0, 0),
//                                   child: Stack(
//                                     children: [
//                                       Container(
//                                         width: 120,
//                                         height: 5,
//                                         decoration: BoxDecoration(
//                                           color: Color(0xFFEEEEEE),
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                           border: Border.all(
//                                             color: Color(0xFFC4C4C4),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 80,
//                                         height: 5,
//                                         decoration: BoxDecoration(
//                                           color: Colors.green,
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }