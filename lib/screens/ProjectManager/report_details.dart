import 'package:cehpoint_project_management/screens/ProjectManager/weekly_feedback.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportDetails extends StatefulWidget {
  const ReportDetails({Key? key}) : super(key: key);

  @override
  State<ReportDetails> createState() => _ReportDetailsState();
}

class _ReportDetailsState extends State<ReportDetails> {
  final _value = "-1";
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
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "REPORT DETAILS",
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
                const SizedBox(height: 130),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      DropdownButtonFormField(
                        dropdownColor: Colors.white,
                        isExpanded: false,
                        value: _value,
                        items: const [
                          DropdownMenuItem(
                            value: "-1",
                            child: Text(
                              "Add week",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff7F7F7F)),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "1",
                            child: Text("Week 1"),
                          ),
                          DropdownMenuItem(
                            value: "2",
                            child: Text("Week 2"),
                          ),
                          DropdownMenuItem(
                            value: "3",
                            child: Text("Week 3"),
                          ),
                          DropdownMenuItem(
                            value: "4",
                            child: Text("Week 4"),
                          ),
                          DropdownMenuItem(
                            value: "5",
                            child: Text("Week 5"),
                          ),
                        ],
                        onChanged: (v) {},
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const TextField(
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff7F7F7F)),
                          decoration: InputDecoration(
                            hintText: "Add Report link",
                            hintStyle: TextStyle(
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 300),
                      InkWell(
                        onTap: () {
                          Get.to(() => const WeeklyFeedback());
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xffD4C00B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                'SAVE REPORT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
