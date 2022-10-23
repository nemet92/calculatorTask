import 'package:flutter/material.dart';
import 'package:test2/widget/mathematicalFunction.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String text = " ";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.black12,
                // height: context.mediaQuery.size.height * 0.3,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                // height: context.mediaQuery.size.height,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonMathematicalFunction(
                              onTap: () {},
                              text: "C",
                              boxcolor: Colors.black26),
                          ButtonMathematicalFunction(
                              onTap: () {},
                              text: "%",
                              boxcolor: Colors.black26),
                          ButtonMathematicalFunction(
                              onTap: () {},
                              text: "-/+",
                              boxcolor: Colors.black26),
                          ButtonMathematicalFunction(
                              onTap: () {},
                              text: "X",
                              textColor: Colors.white,
                              boxcolor: const Color(0xffed1e79)),
                        ],
                      ),
                      sizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            onTap: () {
                              print(text);
                            },
                            text: '1',
                          ),
                          CustomContainer(
                            onTap: () {},
                            text: '2',
                          ),
                          CustomContainer(
                            onTap: () {},
                            text: '3',
                          ),
                          ButtonMathematicalFunction(
                              boxcolor: const Color(0xfff15a24),
                              text: "-",
                              onTap: () {})
                        ],
                      ),
                      sizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            onTap: () {
                              print(text);
                            },
                            text: '4',
                          ),
                          CustomContainer(
                            onTap: () {},
                            text: '5',
                          ),
                          CustomContainer(
                            onTap: () {},
                            text: '6',
                          ),
                          ButtonMathematicalFunction(
                              boxcolor: const Color(0xff009245),
                              text: "÷",
                              onTap: () {})
                        ],
                      ),
                      sizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            onTap: () {
                              print(text);
                            },
                            text: '7',
                          ),
                          CustomContainer(
                            onTap: () {},
                            text: '8',
                          ),
                          CustomContainer(
                            onTap: () {},
                            text: '9',
                          ),
                          ButtonMathematicalFunction(
                              boxcolor: Colors.red, text: "-", onTap: () {})
                        ],
                      ),
                      sizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            onTap: () {
                              print(text);
                            },
                            text: '0',
                          ),
                          CustomContainer(
                            onTap: () {},
                            text: '.',
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: ElevatedButton(
                                  onPressed: () {}, child: const Text("=")))
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  SizedBox sizedBox() {
    return const SizedBox(
      height: 10,
    );
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: const BoxDecoration(
            color: Colors.transparent, shape: BoxShape.circle),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

enum TextList {
  C,
}
