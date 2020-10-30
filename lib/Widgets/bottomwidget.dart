import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 4.8,
          height: 800,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(50, 80, 40, 40),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Text(
                'Prediqt',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Useful Articles',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'How it Works',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'In the Press',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Blog',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Mobile Apps',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          width: 60,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 4.8,
          height: 800,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(50, 80, 40, 40),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Text(
                'Rewards Ways to Earn',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'All Gift Cards / Surveys',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Discover Deals',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          width: 60,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 4.8,
          height: 800,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(50, 80, 40, 40),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Text(
                'Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Do and Donts',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Term of Use',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Prediqt, LLC',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Customer Support',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              RaisedButton(
                  color: Colors.white, //Color(0XFFFF0000),
                  disabledColor: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Advertise With Us',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              Text(
                'Connect With Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/facebook.png',
                    width: 30,
                    height: 30,
                  ),
                  Image.asset(
                    'images/twitter1.png',
                    width: 30,
                    height: 30,
                  ),
                  Image.asset(
                    'images/instagram.png',
                    width: 30,
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
