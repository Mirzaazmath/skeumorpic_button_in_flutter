import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isSwitchOn = !isSwitchOn;
          });
        },
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  isSwitchOn
                      ? const SizedBox()
                      : Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.black12,
                              Colors.black54,
                            ]),
                            boxShadow: [
                               BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(20, 0),
                                  blurRadius: 60),
                              BoxShadow(
                                  color: Colors.white10,
                                  offset: const Offset(-1, 0),
                                  blurRadius: 60),
                            ],
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(32)),
                          ),
                        ),
                  Container(
                    height: 100,
                    width: 90,
                    margin: const EdgeInsets.only(top: 15, right: 5),
                    foregroundDecoration: BoxDecoration(
                      color: isSwitchOn
                          ? Theme.of(context).scaffoldBackgroundColor
                          : Colors.transparent,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Theme.of(context).scaffoldBackgroundColor,
                              Theme.of(context).primaryColor,
                            ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white24,
                              offset: Offset(-1, 0),
                              blurRadius: 0),
                          BoxShadow(
                              color: Colors.black87,
                              offset: Offset(3, 0),
                              blurRadius: 0)
                        ],
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30))),
                  ),
                ],
              ),
              //// ****** Bottom Part ****** ///////
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  isSwitchOn
                      ? Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Colors.black,
                              Colors.green,
                            ]),
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.black87,
                                  offset: Offset(-15, 1),
                                  blurRadius: 40),
                              BoxShadow(
                                  color: Colors.green.withOpacity(0.5),
                                  offset: const Offset(10, 2),
                                  blurRadius: 50)
                            ],
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(30)),
                          ),
                        )
                      : const SizedBox(),
                  Container(
                    height: 100,
                    width: 90,
                    margin: const EdgeInsets.only(bottom: 10, right: 5),
                    foregroundDecoration: BoxDecoration(
                      color: isSwitchOn
                          ? Colors.transparent
                          : Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(30)),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context).scaffoldBackgroundColor,
                              Theme.of(context).primaryColor,
                              Theme.of(context).primaryColor,
                              Theme.of(context).primaryColor,
                              Theme.of(context).primaryColor,
                            ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white24,
                              offset: Offset(-1, 0),
                              blurRadius: 0),
                          BoxShadow(
                              color: Colors.black87,
                              offset: Offset(3, 0),
                              blurRadius: 0)
                        ],
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(30))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
