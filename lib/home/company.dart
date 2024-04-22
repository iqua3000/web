import 'package:flutter/material.dart';

class Company extends StatelessWidget {
  const Company({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 765) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Image.asset(
              'images/tuti.png',
              width: 90,
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.purple[50],
                    backgroundImage: const AssetImage('images/icon.png')),
                accountName: const Text(""),
                accountEmail: const Text(""),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
              ListTile(
                title: const Text("홈"),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              ListTile(
                title: const Text("회사소개"),
                onTap: () {
                  Navigator.pushNamed(context, '/company');
                },
              ),
              const ListTile(
                title: Text("취업"),
              ),
              ListTile(
                title: const Text("대학"),
                onTap: () async {
                  // Uri url = Uri.parse(
                  //     "https://iqua3000.github.io/tuti-frontend/#/webLogin");
                  // _launchInBrowswer(url);
                },
              ),
              const ListTile(
                title: Text("커뮤니티"),
              ),
              const ListTile(
                title: Text("스터디카페"),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 80),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/iquainc.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/aboutus.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: const Text(
                  "Tuti는 AI 및 빅데이터 기술을 활용하여 국내외 대학생 및 취준생을 위해 적합한 대학, 회사를 매칭시켜주는 플랫폼입니다."),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/ourmission.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: const Text(
                  "Tuti 플랫폼은 인종 학력 부모와 상관없이 전세계 대학생들을 대상으로 넓은 세상을 탐험하고싶은 사람이라면 누구나 가능하게 하자는 목표로 탄생했습니다."),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/whatwedo.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tuti에서 다양한 분야의 글로벌 활동들을 알아보세요.",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "글로벌 인재로 성장하기 위한 독보적 리소스를 제공해 드립니다.",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "전세계의 대학 프로그램, 전세계의 다양한 회사 풀에 AI 기술을 적용하여, 개인의 희망진출지역, 성향, 상황을 고려한 최적의 대학교, 회사 매칭을 위한 자체 검색엔진 개발을 통해 지원합니다.",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(bottom: 0),
              child: Image.asset(
                "images/map.png",
                scale: 2.5,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: const Text(
                "Image copyright @rawpixel.com",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            // Tuti, 검색, 알림 화면
            Container(
              alignment: Alignment.center,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          'images/tuti.png',
                          width: 90,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/company');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "회사 소개",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "업무",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "대학",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () async {
                          // Uri url = Uri.parse(
                          //     "https://iqua3000.github.io/tuti-frontend/#/webLogin");
                          // _launchInBrowswer(url);
                          // Navigator.pushNamed(context, '/webLogin');
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "커뮤니티",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "스터디 카페",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: 160,
                      height: 30,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.lightGreen[800]),
                      child: const Center(
                        child: Text(
                          "문의하기",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () async {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            surfaceTintColor: Colors.white, // AlertDialog 배경색
                            title: const Text('상담받기'),
                            content: Container(
                              height: 150,
                              child: const Column(
                                children: [
                                  Text('Instagram'),
                                  Text("Kakao Talk"),
                                  Text("Line"),
                                  Text("WeChat"),
                                  Text("E-mail"),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/iquainc.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/aboutus.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: const Text(
                "Tuti는 AI 및 빅데이터 기술을 활용하여 국내외 대학생 및 취준생을 위해 적합한 대학, 회사를 매칭시켜주는 플랫폼입니다.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/ourmission.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: const Text(
                "Tuti 플랫폼은 인종 학력 부모와 상관없이 전세계 대학생들을 대상으로 넓은 세상을 탐험하고싶은 사람이라면 누구나 가능하게 하자는 목표로 탄생했습니다.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/whatwedo.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tuti에서 다양한 분야의 글로벌 활동들을 알아보세요.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "글로벌 인재로 성장하기 위한 독보적 리소스를 제공해 드립니다.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "전세계의 대학 프로그램, 전세계의 다양한 회사 풀에 AI 기술을 적용하여, 개인의 희망진출지역, 성향, 상황을 고려한 최적의 대학교, 회사 매칭을 위한 자체 검색엔진 개발을 통해 지원합니다.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(bottom: 0),
              child: Image.asset(
                "images/map.png",
                scale: 2.5,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: const Text("Image copyright @rawpixel.com"),
            ),
          ],
        ),
      );
    }
  }
}
