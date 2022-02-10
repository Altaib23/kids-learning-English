import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  static const String _title = 'Registration Page';
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container();
    int selectedGender = 0;
    void _handleRadioValueChange1(int value) =>
        setState(() => selectedGender = value);
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: Account._title,
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: 70),
              Text("New Register",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network('https://via.placeholder.com/150',
                    height: 150),
              ),
              SizedBox(height: 20),
              Container(
                width: double.maxFinite,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                            obscureText: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "First Name",
                              // fillColor: Colors.green
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                            obscureText: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Last Name",
                              // fillColor: Colors.green
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Select Gender",
                  style: TextStyle(fontSize: 16.0, color: Colors.black)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    activeColor: Colors.black,
                    value: 0,
                    groupValue: selectedGender,
                    onChanged: _handleRadioValueChange1,
                  ),
                  Text(
                    'Male',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  Radio(
                    activeColor: Colors.black,
                    value: 1,
                    groupValue: selectedGender,
                    onChanged: _handleRadioValueChange1,
                  ),
                  Text(
                    'Female',
                    style: new TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Email Id",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Retype Password",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 250,
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Text(
                    "Register Now",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ]),
          ),
        ),
      );
    }
  }
}
