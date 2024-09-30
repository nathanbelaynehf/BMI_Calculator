import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'result.dart';
import 'button.dart';
import 'Roundedicon.dart';
import 'Calculator.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Card(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? mycolors : myinA,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour:
                          selectedGender == Gender.female ? mycolors : myinA,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: "FEMALE")),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable_Card(
              colour: mycolors,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: labelTextStyle2),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Card(
                    colour: mycolors,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: labelTextStyle2,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RondedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPresseds: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(width: 10),
                              RondedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPresseds: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    colour: mycolors,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: labelTextStyle2,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RondedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPresseds: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width: 10),
                              RondedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPresseds: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomB(
            buttonTitle: "CALCULATE",
            ontap: () {
              calculator bmiv = calculator(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => result(bmiv.calculate(),
                        bmiv.getResult(), bmiv.getInterpretation())),
              );
            },
          ),
        ],
      ),
    );
  }
}
