
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text; final IconData icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Color(0xFF3A3A3A),
          padding: EdgeInsets.all(20),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(icon,color: Colors.black,),
            SizedBox(width: 20),
            Expanded(child: Text(text , style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w500, color: Colors.black ),)),
          ],
        ),
      ),
    );
  }
}

class fieldMenu extends StatelessWidget {

   fieldMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text; final IconData icon;
  final VoidCallback? press;
  final txt = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Color(0xFF3A3A3A),
          padding: EdgeInsets.only(left: 20,bottom: 10 , top: 10),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(icon,color: Colors.black,),
            SizedBox(width: 20),
            Expanded(child: TextField( decoration: InputDecoration(border: InputBorder.none,hintText: text), style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w500, color: Colors.black ),)),
          ],
        ),
      ),
    );
  }
}