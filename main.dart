// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  int tap = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Version 3.2-no code')),
            body: GestureDetector(

                // onTapUp: (TapUpDetails tapUpDetails) {
                //   FocusScopeNode currentFocus = FocusScope.of(context);
                //   tap += 1;
                //   debugPrint("onTAP up -----------  start =" + tap.toString());
                //   if (!currentFocus.hasPrimaryFocus) {
                //     currentFocus.unfocus();
                //   }
                onTapUp: (TapUpDetails details) => _onTapUp(details),

                //},
                onTapDown: (TapDownDetails tapDownDetails) {
                  debugPrint("body 29 onTapDown - active");
                  //tap += 1;
                  // debugPrint("onTapDown end =" +
                  //     tap.toString() +
                  //     "\n fingers =" +
                  //     "onTapDown e!!!nd =" +
                  //     tap.toString().toString());
                  // print(tapDownDetails);
                  // print(TapDownDetails);
                },
                child: UpdateText()
            )  //end body
        )
    );
  }
}

_onTapUp(TapUpDetails details) {
  var x = details.globalPosition.dx;
  var y = details.globalPosition.dy;
  // or user the local position method to get the offset
 // print(details.localPosition);
  print("line 52-----tap up " + x.toString() + ", " + y.toString());
}

class UpdateText extends StatefulWidget {
  const UpdateText({Key? key}) : super(key: key);

  @override
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  String textHolder = 'best bet 25plus';
  String textHolder2 = "";
  int codeKeyed = 0;
  int coded = 0;
  int tap = 0;
  int fingers = 0;
  int code1 = 0;
  int code2 = 0;
  int code3 = 0;
  int code4 = 0;
  int code5 = 0;
  int code6 = 0;
  int code7 = 0;
  int id = 0;
  int runCoder = 0;
  String updateText = "nothing yet";
  String output = "";
  String sentence = "";
  String decoded = "";
  int show = 2;
  String chord = "";

  // String codeStringCode = "unset";
  // String textHolder2 = "nothing yet";

  reset(int code, int codeKeyed, String output) {
    setState(() {
      codeKeyed = 0;
      code = 0;
      output = "reset";
      sentence = "";
      updateCode(0);
      print("RESET CALLED........................");
    });
  }

  updateCode(int code) {
    setState(() {
      codeKeyed = code1 + code2 + code3 + code4 + code5 + code6;
      updateText=codeKeyed.toString();
      if (code > 127) {
        print("!!!!!!!!!!!!!!!!!!!!!!OVERLOAD");
        code = 0;
      }
      String now = DateTime.now().toString();
      //String date = new DateTime(now.day, now.minute, now.second).toString();
      //String datetime = DateTime.now().toString();
      textHolder2 = now;
      //debugPrint("keyUp " + keyUp.toString());
      debugPrint("------------\n updateCode 106- \n code = " + code.toString() +
          "codeKeyed= " + codeKeyed.toString());
      debugPrint("107- Tap= " + tap.toString() + "\n---------");
    });

    //debugPrint("coding");

    coded = 1;
    //output = codeKeyed.toString();
    coder();
  }

  coder() {
    setState(() {
      var keyMap = [
        //The array that holds he key codes that are sent to the screen as inner HTML content
        '_',
        // nothing pressed.
        'spc',
        //1
        'e',
        //2
        'i',
        //3
        'o',
        // 4 //
        'c',
        //5
        'a',
        //6
        'd',
        //7
        's',
        // 8 //
        'k',
        //9
        't',
        //10
        'r',
        //11
        'n',
        // 12
        'y',
        //13
        '.',
        //14
        'f',
        //15
        'u',
        // 16 //
        'h',
        //17
        'v',
        //18
        'l',
        // 19
        'q',
        // 20//
        'z',
        //21
        'CR',
        // 22
        "'",
        //23
        'g',
        // 24 //
        'j',
        //25
        ',',
        //26
        'w',
        //27
        'b',
        // 28 //
        'x',
        //29
        'm',
        //30
        'p',
        // everything pressed (cancel).31

        '_',
        // nothing pressed.0 / 32
        'spc',
        //33
        'E',
        //
        'I',
        //
        'O',
        // 4 //36
        'C',
        'A',
        //
        'D',
        //
        'S',
        // 8 //40
        'K',
        //
        'T',
        //
        'R',
        'N',
        // 12 44
        'Y',
        //
        '!',
        //
        'F',
        //
        'U',
        // 16 //48
        'H',
        //
        'V',
        //
        'L',
        //
        'Q',
        // 20//52
        'Z',
        //
        'CR',
        //
        "'",
        'G',
        // 24 //56
        'J',
        //
        ',',
        //
        'W',
        //
        'B',
        // 28 //60
        'X',
        'M',
        'P',
        // everything pressed (cancel).63

//NUMBERS

        '_',
        // nothing pressed. 64
        '1',
        //1
        '€',
        //2
        '2',
        //3
        '⋅',
        // 4 //68
        '0',
        //5
        '“',
        //6
        '3',
        //7
        ' ',
        // 8 /72/104
        '',
        //9
        'TAB',
        //10
        '',
        //11
        '”',
        // 12  76
        '¥',
        //13
        '.',
        //14
        '4',
        //15
        '',
        // 16 //80
        '6',
        //17
        '÷',
        //18
        '£',
        // 19
        '',
        // 20//84
        '¢',
        //21
        'CR',
        //22
        '"',
        //23
        '§',
        // 24 //88
        '7',
        //25
        ',',
        //26
        '9',
        //27
        'BulletPoint',
        // 28 //92
        '8',
        //29
        '',
        //30
        '5',
        // everything pressed (cancel).95

//SYMBOLS

        '_',
        // nothing pressed. 96
        '>:(',
        // 97
        '=',
        //98
        '<',
        //99
        ' :-) ',
        // 4 //100
        '[',
        //101
        '@',
        //102
        '(',
        //103
        '',
        // 8 //104
        '/',
        // 105
        '*',
        //106
        '&',
        //107
        '-',
        // 12  108
        '?',
        //109
        '.',
        //110
        '{',
        //111
        '^',
        // 16 //112
        '#',
        //113
        '\\',
        //114
        '£',
        // 115
        ']',
        // 20//116
        '%',
        //117
        '\n',
        //  118
        " :-0 ",
        //119
        '>',
        // 24 //120
        ';',
        //121
        'º',
        //122
        ':',
        //123
        ')',
        // 28 //124
        '!',
        //125
        '}',
        //126
        '+'
        //127
      ];

      // if (codeKeyed > 127) {
      //   codeKeyed = 0;
      // }
      //;
      //
      // debugPrint("IN CODER codeKeyed =" +
      //     codeKeyed.toString() +
      //     "\n char =" +
      //     keyMap[codeKeyed].toString());
      decoded = keyMap[codeKeyed];
    });
    //});
  }

  showstuff(decoded) {
    print("chord=" +
        chord.toString() +
        "\n!!!!!!!!!!!!!!decoded=" +
        decoded.toString());

    //if (show == 0) {
    setState(() {
      //String chord = "";
      textHolder = codeKeyed.toString();
      output = decoded;
      chord = chord + output;
     // if (chord.length == 1) {
       // sentence = sentence + chord.substring(chord.length - 1);
      //}
     // show = show + 1;
      sentence = sentence+output;
    });
    //}else{ clear();
    //show = 1;
    //}
  }

  // @override
  // int tap = 0;
  clear() {
    fingers = 0;
    code1 = 0;
    code2 = 0;
    code3 = 0;
    code4 = 0;
    code5 = 0;
    code6 = 0;
    code7 = 0;
    tap = 0;
    //codeKeyed = 0;
    //textHolder="clered";
    //output ="";

    debugPrint("318 vars!!!!cleared");
  }

  _onTapUp(TapUpDetails details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    // or user the local position method to get the offset
    debugPrint("_onTapUp");
    //print(details.localPosition);
    tap = tap - 1;
    //print("tap up " + x.toString() + ", " + y.toString());
    print("_onTapUp- TAP=" + tap.toString());
    if (tap == 0) {
      coder();
      showstuff(decoded);
    }
  }

  _onTapDown(TapDownDetails details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    // or user the local position method to get the offset
    debugPrint("_onTapDown 338");
    // print(details.localPosition);
    coder();
    tap = tap + 1;
    // print("tap DOWN " + x.toString() + ", " + y.toString());
    print("_onTapDown TAP=" + tap.toString());

    codeKeyed = code1 + code2 + code3 + code4 + code5 + code6;

    fingers += 1;

    if (id == 7) {
      code1 = 2;
    }
    if (id == 6) {
      code2 = 4;
    }
    if (id == 5) {
      code3 = 8;
    }
    if (id == 4) {
      code4 = 16;
    }
    if (id == 3) {
      code5 = 32;
    }
    if (id == 2) {
      code6 = 64;
    }
    if (id == 1) {
      code7 = 0;
    }

    // code7 +
    // codeKeyed;
    debugPrint("Button Pressed ID =" +
        id.toString() +
        "\n codeKeyed =" +
        codeKeyed.toString() +
        "\n runCoder =" +
        runCoder.toString());

    if (id == 10) {
      reset(0, 0, "");
    }
    //coder();

    updateCode(codeKeyed);
    // clear();
    Future.delayed(Duration(milliseconds: 1000), () {
      String now = DateTime.now().toString();
      print(
          "delayed " + now + "\n codeKeyed =" + codeKeyed.toString());
      //showstuff(decoded);

     // show=show-1;
      // clear();
    });


    debugPrint("end of _onTapDown 397");
  }

  makeButton(int id, int code, String title) {
    return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              // fills width
              child: InkWell(
                //

                // onTapDown: (detail) => print('On Tap Down'),
                //onTapCancel: () => print('On Tap Cancel'),
                //onPanEnd: (detail) => print('On Pan End'),
                onTapDown: (TapDownDetails details) => _onTapDown(details),

                onTapUp: (TapUpDetails details) => _onTapUp(details),
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.amber[600],
                  child: Padding(
                    padding: EdgeInsets.all(3.0), // effective height

                    child: Text(code.toString() + " " + title,
                        style: TextStyle(fontSize: 30)),
                  ),
                  //
                ),

              ),
            ),
          ],
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Text(textHolder2, style: const TextStyle(fontSize: 20)),

                      Expanded(
                        child: Text(
                            sentence, style: const TextStyle(fontSize: 20)),
                      ),
                      Text(textHolder, style: const TextStyle(fontSize: 20)),
                    ]),
              ),
              makeButton(8, 1, "1"),
              makeButton(7, 2, "2"),
              makeButton(6, 4, "FOUR"),
              makeButton(5, 8, "EIGHT"),
              makeButton(4, 16, "SIXTEEN"),
              makeButton(3, 32, "32"),
              makeButton(2, 64, "64"),
              makeButton(1, 0, "DEL"),
              makeButton(10, 0, "reset"),
              makeContainer(200, 999, "simon's here"),
              Container(
                // margin: EdgeInsets.all(00.0),
                // padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                width: 3000,
                height: 100,
                child: Text(DateTime.now().toString() + "\n" + updateText,
                    style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(),
                ),
              ),
              Container(
                margin: EdgeInsets.all(00.0),
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                width: 3000,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(),
                ),
                child: Text("Hello", style: TextStyle(fontSize: 30)),
              ),
              myLayoutWidget(),
            ])));
  }

  Widget makeContainer(int id, int code, String title) {
    return Container(
        alignment: Alignment.center,
        width: 2000,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
        child: Text(title, style: TextStyle(fontSize: 30)));
  }


  Widget myLayoutWidget() {
    return Container(
      margin: EdgeInsets.all(0.0),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      width: 2000,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Text("Helfredlo", style: TextStyle(fontSize: 30)),
    );
  }
}