import 'package:flutter/material.dart';
import 'arithmeticOperations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  ThemeData _light = ThemeData.light().copyWith(
    primaryColor: Colors.green,
  );
  ThemeData _darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
  );
  bool _isDark = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: _darkTheme,
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var operations = new ArithmeticOperations();
  final myController = TextEditingController();
  final resultsController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  // This method is rerun every time setState is called, for instance as done
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(children: <Widget>[
            //Answer text field
            Container(
                margin: EdgeInsets.only(left: 10, bottom: 10, top: 20),
                child: Column(
                  children: <Widget>[
                    TextField(
                      readOnly: true,
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                      controller: resultsController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        //Change textfield border to green
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    )
                  ],
                )),

            //Input Text Fields
            Container(
                margin: EdgeInsets.only(left: 10, bottom: 60),
                child: Column(
                  children: <Widget>[
                    TextField(
                      readOnly: true,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      controller: myController,
                      cursorColor: Colors.orange[600],
                      decoration: InputDecoration(
                        hintText: '0',
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,

                        //Change textfield border to green
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    )
                  ],
                )),
          ]),

          //-----------first  Row stores a row of buttons------------
          Row(
            children: <Widget>[
              //AC Button container
              Container(
                  // padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[400],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.clearButton();
                          },
                          child: Center(
                              child: Text('AC',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  )))))),

              //+/- Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[400],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.plusMinusButton();
                          },
                          child: Center(
                              child: Text('+/-',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  )))))),

              //Mod button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[400],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.modButton();
                          },
                          child: Center(
                              child: Text('%',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  )))))),
              //Divide Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.orange[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.divideButton();
                          },
                          child: Center(
                              child: Text('÷',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  )))))),
            ],
          ), //End of first Row

          SizedBox(height: 10.0), //Gives space between two widgets
//-----------Second Row stores a row of buttons------------
          Row(
            children: <Widget>[
              //7 Button container
              Container(
                  // padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.sevenButton();
                          },
                          child: Center(
                              child: Text('7',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //8 Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.eightButton();
                          },
                          child: Center(
                              child: Text('8',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //9 button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.nineButton();
                          },
                          child: Center(
                              child: Text('9',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),
              //x Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.orange[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.multiplyButton();
                          },
                          child: Center(
                              child: Text('×',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  )))))),
            ],
          ), //End of Second Row

          SizedBox(height: 10.0), //Gives space between two widgets
//-----------third Row stores a row of buttons------------
          Row(
            children: <Widget>[
              //4 Button container
              Container(
                  // padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.fourButton();
                          },
                          child: Center(
                              child: Text('4',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //5 Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.fiveButton();
                          },
                          child: Center(
                              child: Text('5',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //6 button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.sixButton();
                          },
                          child: Center(
                              child: Text('6',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),
              //Divide Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.orange[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.minusButton();
                          },
                          child: Center(
                              child: Text('-',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  )))))),
            ],
          ), //End of third Row

          SizedBox(height: 10.0), //Gives space between two widgets
//----------- fourth row that stores a row of buttons------------
          Row(
            children: <Widget>[
              //1 Button container
              Container(
                  // padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.oneButton();
                          },
                          child: Center(
                              child: Text('1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //2 Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.twoButton();
                          },
                          child: Center(
                              child: Text('2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //3 button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.threeButton();
                          },
                          child: Center(
                              child: Text('3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),
              //= Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.orange[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.plusButton();
                          },
                          child: Center(
                              child: Text('+',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  )))))),
            ],
          ), //End of fourth Row

          SizedBox(height: 10.0), //Gives space between two widgets
//-----------Second Row stores a row of buttons------------
          Row(
            children: <Widget>[
              //AC Button container
              Container(
                  // padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 60.0,
                  width: 130.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {
                            this.myController.text =
                                this.operations.zeroButton();
                          },
                          child: Center(
                              child: Text('0',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //+/- Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[600],
                      child: GestureDetector(
                          onTap: () {},
                          child: Center(
                              child: Text(',',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )))))),

              //Equal Button
              Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.orange[600],
                      child: GestureDetector(
                          onTap: () {
                            this.resultsController.text =
                                this.operations.equalButton();
                          },
                          child: Center(
                              child: Text('=',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  )))))),
            ],
          ) //End of Second Row
        ],
      ),
    );
  }
}
