import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: const [
                Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
              pinned: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
              leading: const Icon(
                Icons.menu,
                color: Colors.black87,
              ),
              backgroundColor: Colors.orangeAccent,
              collapsedHeight: 100,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://storage.kun.uz/source/9/Eg5RbVRpRUyXF0ujVGj5lqMDNE87aUu-.jpg"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Philip Mccoy",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Manager",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),

            /// My tasks
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ///My tasks
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "My tasks",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.teal,
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),

                    /// To Do
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.redAccent,
                          child: Icon(
                            Icons.access_time,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "To Do",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "5 tasks now - 1 started",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    /// In Progress
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.orangeAccent,
                          child: Icon(
                            Icons.incomplete_circle,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "In Progress",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "1 task now - 1 started",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    /// Done
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(
                            Icons.skip_next_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Done",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "18 tasks now - 18 started",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),

            /// Active Projects
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Active Projects
                    Row(
                      children: const [
                        Text(
                          "Active Projects",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        /// Cyan template
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                height: 200,
                                width: 150,
                                color: Colors.cyan[700],
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircularPercentIndicator(
                                          radius: 35.0,
                                          lineWidth: 5.0,
                                          percent: 0.25,
                                          center: const Text(
                                            "25%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white),
                                          ),
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          progressColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Medical App",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "9 hours progress",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        /// Red template
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                height: 200,
                                width: 150,
                                color: Colors.red[300],
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircularPercentIndicator(
                                          radius: 35.0,
                                          lineWidth: 5.0,
                                          percent: 0.75,
                                          center: const Text(
                                            "75%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white),
                                          ),
                                          circularStrokeCap:
                                          CircularStrokeCap.round,
                                          progressColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Sport App",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "40 hours progress",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        /// Orange template
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                height: 200,
                                width: 150,
                                color: Colors.orange[400],
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircularPercentIndicator(
                                          radius: 35.0,
                                          lineWidth: 5.0,
                                          percent: 0.25,
                                          center: const Text(
                                            "25%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white),
                                          ),
                                          circularStrokeCap:
                                          CircularStrokeCap.round,
                                          progressColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Medical App",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "9 hours progress",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        /// Blue template
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                height: 200,
                                width: 150,
                                color: Colors.blue[700],
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircularPercentIndicator(
                                          radius: 35.0,
                                          lineWidth: 5.0,
                                          percent: 0.25,
                                          center: const Text(
                                            "25%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white),
                                          ),
                                          circularStrokeCap:
                                          CircularStrokeCap.round,
                                          progressColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Medical App",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "9 hours progress",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
