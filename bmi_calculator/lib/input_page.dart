import 'package:bmi_calculator/app_constants.dart';
import 'package:bmi_calculator/base_card.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const SEX_MALE = 'male';
const SEX_FEMALE = 'female';

class _InputPageState extends State<InputPage> {
  String _sex;

  void selectSex(String sex) {
    setState(() {
      _sex = sex;
    });
    print("SELECTED $sex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      bottomNavigationBar: Container(
        color: AppConstants.bottomContainer,
        height: AppConstants.bottomContainerHeight,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      selectSex(SEX_MALE);
                    },
                    child: BaseCard(
                      color: _sex == SEX_MALE ? AppConstants.cardColor : AppConstants.inactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      selectSex(SEX_FEMALE);
                    },
                    child: BaseCard(
                      color: _sex == SEX_FEMALE ? AppConstants.cardColor : AppConstants.inactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: BaseCard(
              color: AppConstants.cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BaseCard(
                    color: AppConstants.cardColor,
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    color: AppConstants.cardColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
