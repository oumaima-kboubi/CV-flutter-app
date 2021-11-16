import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  const Header( {Key? key,required this.name,required this.phone,required this.email,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  //  mainAxisAlignment: MainAxisAlignment.,
                  children: <Widget>[
                    Text(
                      name.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      phone,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                          fontSize: 15),
                    ),
                    Text(
                      email,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                          fontSize: 15),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/images/picture.jpg"),
                ),
          
              ],
            );
  }
}
