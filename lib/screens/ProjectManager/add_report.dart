import 'package:cehpoint_project_management/screens/ProjectManager/project_manager_landing_screen.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/report_details.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/weekly_feedback.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddReport extends StatefulWidget {
  const AddReport({Key? key, required this.clientProjectName})
      : super(key: key);
  final String clientProjectName;
  @override
  State<AddReport> createState() => _AddReportState();
}

class _AddReportState extends State<AddReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          // color: Colors.greenAccent,
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
                          Get.to(() => const ProjectManagerLandingScreen());
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "ADD REPORT",
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
              const SizedBox(height: 20),

              //My Project with color background
              Container(
                color: const Color(0xffF8EF95),
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      // color: Colors.cyanAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Center(
                        child: Icon(
                          Icons.article_outlined,
                          size: 30,
                          color: Color(0xff999999),
                        ),
                      ),
                    ),
                    Text(
                      widget.clientProjectName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              // Manager Details
              Container(
                height: 180,
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        //Name of project manager
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.person,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(width: 13),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "Jit Banerjee",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Company name
                        SizedBox(
                          // color: Colors.greenAccent,
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.domain,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(width: 13),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "CEHPOINT",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Contact number of project manager
                        SizedBox(
                          // color: Colors.greenAccent,
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.call,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "+91 7039494588",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Date start and end of project
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.date_range_outlined,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(width: 13),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "05.01.2023 to 05.02.2023",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Project Name
                      ],
                    ),
                  ],
                ),
              ),

              // ADD Report
              const SizedBox(height: 14),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffCCCCCC),
                    ),
                    top: BorderSide(
                      color: Color(0xffCCCCCC),
                    ),
                  ),
                ),
                alignment: Alignment.center,
                height: 35,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "REPORT",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),

              InkWell(
                onTap: () {
                  Get.to(() => ReportDetails(
                      clientProjectName: widget.clientProjectName));
                },
                child: Container(
                  margin: const EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffD4C00B),
                    borderRadius: BorderRadius.circular(10),
                  ),
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
                        'ADD REPORT',
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
              // All Weeks Report List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.zero,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Color(0xffD4C00B),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                              ),
                            ),
                            child: ExpansionTile(
                              initiallyExpanded: false,
                              title: Text(
                                'Week-${index + 1}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              children: [
                                //Project name and feedback
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    children: [
                                      // MY Project
                                      SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.article_outlined,
                                              size: 30,
                                              color: Color(0xff999999),
                                            ),
                                            const SizedBox(
                                              width: 13,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                widget.clientProjectName,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //UPDATE REPORT
                                      SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.link,
                                              size: 30,
                                              color: Color(0xff999999),
                                            ),
                                            SizedBox(
                                              width: 13,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "Update Report",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(color: Colors.white, height: 18),

                                //View FeedBack
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const WeeklyFeedback());
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    color: Colors.white,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff4A4A4A),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.feedback_outlined,
                                            size: 23,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 13,
                                          ),
                                          Text(
                                            'VIEW FEEDBACK',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
