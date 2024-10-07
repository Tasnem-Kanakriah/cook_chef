// import 'package:flutter/material.dart';

// class MenuPage extends StatelessWidget {
//   const MenuPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.only(top: 30, bottom: 40),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               FilledButton(
//                 style: FilledButton.styleFrom(
//                     fixedSize: const Size(340, 40),
//                     shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(6))),
//                     backgroundColor: const Color(0xfffb9a0d)),
//                 onPressed: () {},
//                 child: const Text(
//                   'Add Meal',
//                   style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
//                 ),
//               ),
//               // FutureBuilder(
//               //   future: ,
//               //   builder: (context, snapshot) {
//               //     return ListView.builder(itemBuilder: (context, index) {

//               //     });
//               // })
//               Expanded(
//                 child: ListView.builder(
//                     itemCount: 2,
//                     itemBuilder: (context, index) {
//                       return Row(
//                         children: [
//                           ListTile(
//                             title: const Text('Kitchen'),
//                             subtitle: const Text('Chechen hint'),
//                             leading: Image.network(
//                                 width: 30,
//                                 height: 30,
//                                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBObuuDUTYitxDP5abo1soB3n5a-OO3htGAw&s'),
//                           ),
//                         ],
//                       );
//                     }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cook_chef_project/services/users_service.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 40, right: 20, left: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                    fixedSize: const Size(360, 40),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    backgroundColor: const Color(0xfffb9a0d)),
                onPressed: () {},
                child: const Text(
                  'Add Meal',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: FutureBuilder(
                    future: getDataOfMeals(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.meals!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              // width: double.infinity,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 30),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xfffba220),
                                      blurRadius: 10,
                                      spreadRadius: -4,
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        snapshot.data!.meals![index].images![0]
                                            .toString(),
                                        width: 50,
                                        height: 50,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            // ''
                                            snapshot.data!.meals![index].name
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            snapshot
                                                .data!.meals![index].description
                                                .toString(),
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            "${snapshot.data!.meals![index].price} LE"
                                                .toString(),
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.disabled_by_default_rounded,
                                        color: Color(0xfffc5561),
                                        size: 30,
                                      )),
                                ],
                              ),
                            );
                          },
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
