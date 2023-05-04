import 'package:ecommerce/widgets/done.dart';
import 'package:ecommerce/widgets/payment.dart';
import 'package:ecommerce/widgets/shipping.dart';
import 'package:flutter/material.dart';
//import 'package:dotted_border/dotted_border.dart';

class Stepper_screen extends StatefulWidget {
  const Stepper_screen({Key? key}) : super(key: key);

  @override
  State<Stepper_screen> createState() => _Stepper_screenState();
}

class _Stepper_screenState extends State<Stepper_screen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Checkout',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: Theme(
        data: ThemeData(
            accentColor: Colors.amber,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Colors.orange,
                  background: Colors.grey.shade300,
                  secondary: Colors.black,
                  onSurface: Colors.orange.shade300,
                )),
        child: Stepper(
          controlsBuilder: (BuildContext context,
              {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {

            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: onStepCancel,
                      child: const Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 90,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: onStepContinue,
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          type: StepperType.horizontal,
          physics: ScrollPhysics(),
          steps: <Step>[
            Step(
                title: Text('Shipping'),
                content: shipping_step(),
                isActive: _index == 0 ? true : false),
            Step(
                title: Text('Payment'),
                content: payment(),
                isActive: _index == 1 ? true : false),
            Step(
                title: Text('Done'),
                content: done(),
                isActive: _index == 2 ? true : false,)
          ],
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (_index <= 0) {
              setState(() {
                _index += 1;
              });
              
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
        ),
      ),
    );
    /*Stepper(
      steps: <Step>[
        Step(
          title: Text('Shipping'),
          content: Container(
            child: Column(
              children: <Widget>[
                 Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add),
                          Text('Add new Address')
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Step(title: Text('Payment'), content: Container(
          
        ))
      ],
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index <= 0) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
    );
    */
  }
}
