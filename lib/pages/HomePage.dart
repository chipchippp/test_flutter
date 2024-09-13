// import 'package:app_mobile/pages/CartPage.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Danh sách sản phẩm'),
         
//         ),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text(
//                   'Menu',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text('Trang chủ'),
//                 onTap: () => {
//                   // Navigator.pop(context),
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.shopping_cart),
//                 title: Text('Giỏ hàng'),
//                 onTap: (){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => CartPage()),
//                   );
                 
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.settings),
//                 title: Text('Cài đặt'),
//                 onTap: () => {print('Cài đặt')},
//               ),
//             ],
//           ),
//         ),
//         body: ListView(
//           children: [
//             ListTile(
//               leading: Icon(Icons.shopping_cart),
//               title: Text('Sản phẩm 1'),
//               subtitle: Text('Mô tả sản phẩm 1'),
//               trailing: Icon(Icons.arrow_forward),
//               onTap: () => {print('Sản phẩm 1')},
//             ),
//             ListTile(
//               leading: Icon(Icons.shopping_cart),
//               title: Text('Sản phẩm 2'),
//               subtitle: Text('Mô tả sản phẩm 2'),
//               trailing: Icon(Icons.arrow_forward),
//               onTap: () => {print('Sản phẩm 2')},
//             ),
//             ListTile(
//               leading: Icon(Icons.shopping_cart),
//               title: Text('Sản phẩm 3'),
//               subtitle: Text('Mô tả sản phẩm 3'),
//               trailing: Icon(Icons.arrow_forward),
//               onTap: () => {print('Sản phẩm 3')},
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => {print('Thêm sản phẩm')},
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

import 'package:app_mobile/pages/CartPage.dart';
import 'package:app_mobile/pages/NavPage.dart';
import 'package:app_mobile/widgets/HeaderAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_mobile/service/UserService.dart';
import 'package:app_mobile/models/User.dart';

class HomePage extends StatelessWidget {
  final UserService userService = UserService();

  @override
  Widget build(BuildContext context) {
    List<User> users = userService.GetUsers();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        
     
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Trang chủ'),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Giỏ hàng'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Cài đặt'),
              onTap: () => {print('Cài đặt')},
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]. name),
            subtitle: Text(users[index].fullName),
            trailing: Text(users[index].age.toString()),
          );
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          // Handle button tap
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavPage()),
              );
              break;
            case 3:
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Account()),
              // );
              break;
          }
        },
        height: 60,
        color: const Color.fromARGB(255, 223, 223, 223),
        items: [
          Icon(Icons.home, size: 30, color: Colors.blue),
          Icon(Icons.shopping_bag, size: 30, color: Colors.blue),
          Icon(Icons.person, size: 30, color: Colors.blue),
          Icon(Icons.list, size: 30, color: Colors.blue),
        ],
      ),
    );
  }
}