import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:prediqt_web_new/main.dart';
import 'package:prediqt_web_new/qtsperques/profilescreen.dart';
import 'package:prediqt_web_new/qtsperques/qtsperclick.dart';
import 'package:prediqt_web_new/qtsperques/ques_cubit.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4.8,
      height: 800,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(50, 80, 40, 40),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.list,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Surveys',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.wallet_giftcard,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Wallet / Redeem',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.shop,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Shop',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.history,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'History',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'System',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.grey.withOpacity(0.8)),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            height: 5,
            color: Colors.grey.withOpacity(0.8),
            thickness: 2.0,
          ),
          SizedBox(
            width: 8,
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.supervised_user_circle,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Profile',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.settings,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Settings',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.how_to_vote,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'How it Works',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'Socialize',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.grey.withOpacity(0.8)),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            height: 5,
            color: Colors.grey.withOpacity(0.8),
            thickness: 2.0,
          ),
          SizedBox(
            width: 15,
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                ImageIcon(
                  AssetImage('images/facebook.png'),
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Facebook',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/twitter1.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Twitter',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          RaisedButton(
            color: Colors.white, //Color(0XFFFF0000),
            disabledColor: Colors.white,
            child: Row(
              children: <Widget>[
                ImageIcon(
                  AssetImage('images/instagram.png'),
                  color: Colors.purpleAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Instagram',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
