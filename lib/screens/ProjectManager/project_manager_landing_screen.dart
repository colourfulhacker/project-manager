import 'package:cehpoint_project_management/screens/ProjectManager/add_project.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/add_report.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectManagerLandingScreen extends StatefulWidget {
  const ProjectManagerLandingScreen({Key? key}) : super(key: key);

  @override
  State<ProjectManagerLandingScreen> createState() =>
      _ProjectManagerLandingScreenState();
}

class _ProjectManagerLandingScreenState
    extends State<ProjectManagerLandingScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: MediaQuery.of(context).size.height * 0.1,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/logo sec 17.png",
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                    SizedBox(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: "Search Project",
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Vector.png",
                            height: 20,
                            width: 40,
                          ),
                          PopupMenuButton(
                            itemBuilder: (context) {
                              return [
                                const PopupMenuItem<int>(
                                  value: 0,
                                  child: Text("New Project"),
                                ),
                                const PopupMenuItem<int>(
                                  value: 1,
                                  child: Text("Add Project"),
                                ),
                                const PopupMenuItem<int>(
                                  value: 2,
                                  child: Text("Log Out"),
                                ),
                              ];
                            },
                            onSelected: (value) {
                              if (value == 0) {
                                print("hello2");
                              }
                              if (value == 1) {
                                Get.to(() => const AddProject());
                              }
                              if (value == 2) {
                                print("hello3");
                              }
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //ano
              const SizedBox(height: 10),
              //AddProject Button
              TextButton(
                onPressed: () {
                  Get.to(() => const AddProject());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffD4C00B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                        'ADD PROJECT',
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
              const SizedBox(height: 30),
              // Tab Bar
              TabBar(
                indicatorColor: const Color(0xffD4C00B),
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 50),
                tabs: const [
                  Tab(
                    child: Text(
                      "Projects",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Report",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.67,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xffCCCCCC),
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 120,
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: Icon(
                                        Icons.article_outlined,
                                        color: Color(0xff818181),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          170,
                                      child: Text(
                                        "My Project $index",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffD4C00B),
                                  ),
                                  child: Text(
                                    'INVITE',
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    //TASK
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xffCCCCCC),
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 140,
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: Icon(
                                        Icons.article_outlined,
                                        color: Color(0xff818181),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          190,
                                      child: Text(
                                        "My Food $index",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(() => const AddReport());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffD4C00B),
                                  ),
                                  child: Text(
                                    'ADD REPORT',
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
