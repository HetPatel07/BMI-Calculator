import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
import 'bottom btn.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.result,
      @required this.bmiReport,
      @required this.bmiSuggestion});

  final String bmiReport;
  final String bmiSuggestion;
  final String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('results'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  textAlign: TextAlign.left,
                  style: kTitleBtn,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kActiveBtnColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                            child: Text(
                          bmiReport,
                          style: kResultTextStyle,
                        )),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            result,
                            style: kBMIResultMain,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            bmiSuggestion,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            BottomBtn(
              btnText: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
