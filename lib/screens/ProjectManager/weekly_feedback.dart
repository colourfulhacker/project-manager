import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyFeedback extends StatefulWidget {
  const WeeklyFeedback({Key? key}) : super(key: key);

  @override
  State<WeeklyFeedback> createState() => _WeeklyFeedbackState();
}

class _WeeklyFeedbackState extends State<WeeklyFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                // AppBar
                Container(
                  height: AppBar().preferredSize.height,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: IconButton(
                          onPressed: () {
                            // Get.to(() => const AddReport());
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "WEEKLY FEEDBACK",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                ),
                const SizedBox(height: 50),

                SizedBox(
                  height: MediaQuery.of(context).size.height - 150,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 30,
                                    width: 30,
                                    // color: Colors.greenAccent,
                                    child: Icon(
                                      Icons.messenger_sharp,
                                      color: Color(0xffD4C00B),
                                      size: 30,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                      child: Text(
                                    "Week-$index",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              // color: Colors.greenAccent,
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 47),
                              child: const Text(
                                "Good job",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xffCCCCCC),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}