import 'package:flutter/material.dart';

class insta1 extends StatefulWidget {
  const insta1({super.key});

  @override
  State<insta1> createState() => _insta1State();
}

class _insta1State extends State<insta1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(
              Icons.lock,
              color: Colors.white,
            ),
            Text(
              "Mr.Darknight",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_rounded),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Stack(children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxisScrolled) {
              return [
                SliverAppBar(
                  toolbarHeight: 300,
                  backgroundColor: Colors.black,
                  pinned: false,
                  flexibleSpace: Column(
                    children: [
                      SizedBox(
                        height: 140,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0, top: 8.0),
                                  child: Container(
                                    height: 100,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/img/amazonlogo.jpg"),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Text(
                                  "chan fellow",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Center(
                                child: RichText(
                                  text: const TextSpan(
                                      text: ' 5000\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),
                                      children: [
                                        TextSpan(
                                          text: 'Post',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40.0),
                              child: Center(
                                child: RichText(
                                    text: TextSpan(
                                        text: '  100M\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                        children: [
                                      TextSpan(
                                          text: 'Followers',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14))
                                    ])),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40.0),
                              child: Center(
                                child: RichText(
                                    text: TextSpan(
                                        text: '    0\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                        children: [
                                      TextSpan(
                                          text: 'Following',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14))
                                    ])),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 130,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey),
                              child: Center(
                                child: Text(
                                  "Following",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 130,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey),
                              child: Center(
                                child: Text(
                                  "Message",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                                child: Center(
                                    child: Icon(
                                  Icons.person_add_outlined,
                                  color: Colors.white,
                                ))),
                          ),
                        ],
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 25,
                            itemBuilder: (BuildContext con, index) {
                              return Container(
                                  height: 80,
                                  width: 110,
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/img/insta.jpeg"),
                                        radius: 50,
                                      ),
                                    ],
                                  ));
                            }),
                      )
                    ],
                  ),
                ),
                SliverAppBar(
                  toolbarHeight: 30,
                  backgroundColor: Colors.black,
                  pinned: true,
                  primary: false,
                  title: Align(
                    alignment: AlignmentDirectional.center,
                    child: TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white,
                        indicatorColor: Colors.white,
                        isScrollable: true,
                        tabs: [
                          Padding(
                            padding: const EdgeInsets.only(right: 80.0),
                            child: Tab(
                              icon: Icon(
                                Icons.grid_3x3_outlined,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 60.0),
                            child: Tab(
                              icon: Icon(
                                Icons.bookmark_add_outlined,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Tab(
                              icon: Icon(Icons.perm_contact_cal_outlined),
                            ),
                          ),
                        ]),
                  ),
                ),
              ];
            },
            body: TabBarView(children: [
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 4 / 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 15,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage("assets/img/amazon.jpg"),
                              fit: BoxFit.fill)),
                    );
                  }),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 4 / 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 15,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage("assets/img/leo.jpg"),
                              fit: BoxFit.fill)),
                    );
                  }),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 4 / 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 15,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage("assets/img/spotify.png"),
                              fit: BoxFit.fill)),
                    );
                  }),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: 4 / 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 15,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage("assets/img/pri.png"),
                              fit: BoxFit.fill)),
                    );
                  }),
            ]),
          ),
        ]),
      ),
    );
  }
}
