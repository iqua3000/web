import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSimple extends StatelessWidget {
  const HomeSimple({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 765) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Image.asset(
            'images/tuti.png',
            width: 90,
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
                  Navigator.pushNamed(context, '/home-Simple');
                },
              ),
              ListTile(
                title: const Text("회사소개"),
                onTap: () {
                  Navigator.pushNamed(context, '/company-Simple');
                },
              ),
              const ListTile(
                title: Text("취업"),
              ),
              const ListTile(
                title: Text("대학"),
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
            Container(
              color: Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      child: const Text("한국어")),
                  const SizedBox(width: 10),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/home-En");
                      },
                      child: const Text("English")),
                  const SizedBox(width: 10),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/home-Jp");
                      },
                      child: const Text("日本語")),
                  const SizedBox(width: 10),
                  const Text("Tiếng Việt"),
                  const SizedBox(width: 10),
                  const Text("中文（繁體）"),
                  const SizedBox(width: 10),
                  const Text("o'zbek"),
                  const SizedBox(width: 10),
                  const Text("Монгол"),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.pink[200],
                  width: size.width,
                  height: 230,
                ),
                const SizedBox(
                  height: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "특별한 경험을 찾고 계신가요?",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "우리는 전세계의 대학생들을 위한 다양한 활동 프로그램을\n한 곳에서 소개하는 플랫폼입니다!\n다양한 분야에서 체험하고 배울 수 있는 프로그램들을 모았어요.\n지금 바로 저희 플랫폼을 방문하여 여러분의 꿈을 키우고\n더 넓은 세상을 만나보세요!",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
              ],
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "등록할 준비가 되셨나요?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                width: 150,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.pink[200],
                ),
                child: const Center(
                  child: Text(
                    "지금 등록하기",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 30),
                  Text(
                    "#교환학생",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "#인턴쉽",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "#글로벌교류",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "#진로탐색",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "#이력강화",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "#국제봉사",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Events",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () async {
                      Uri url = Uri.parse(
                          "https://www.chf.or.kr/cont/view/fest/month/menu/210?thisPage=1&idx=109487&searchCategory1=600&searchCategory2=&searchCategory3=&searchField=all&searchDate=202404&weekSel=undefined&searchText=");
                      _launchInBrowswer(url);
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 300,
                          child: Image.asset('images/moon.jpg'),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "2024 창덕궁 달빛기행(상반기)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "장소 창덕궁",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "기간 2024.4.11 ~ 2024.6.2",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "시간 (1부)19:20, 19:25, 19:30",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "        (2부)20:00, 20:05, 20:10",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () async {
                      Uri url =
                          Uri.parse("https://www.k-illustrationfair.com/");
                      _launchInBrowswer(url);
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 190,
                          height: 300,
                          child: Image.asset('images/seoul.jpg'),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "K-일러스트레이션페어 부산 2024",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "장소 부산 벡스코 제2전시장 4홀",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "기간 2024.7.26(금)~28(일)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "시간 오전 11시 ~ 오후 6시",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () async {
                      Uri url = Uri.parse("http://www.bba48.or.kr/");
                      _launchInBrowswer(url);
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 300,
                          child: Image.asset('images/busan.jpg'),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "부산연등회",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "장소 송상현광장 및 부산시민공원 일원",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "기간 2024.4.26 ~ 2024.5.12",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "시간 오후 6시",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  color: const Color.fromRGBO(24, 78, 119, 1),
                  width: size.width,
                  height: 170,
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 70,
                      child: Image.asset('images/medal.png'),
                    ),
                    const SizedBox(width: 30),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "(주) 이쿠아",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(""),
                        Text(
                          "기업명      (주) 이쿠아",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "주    소      서울 강남구 테헤란로22길 15, 2층",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "전    화      +82) 10.7415.8850",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
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
                          Navigator.pushNamed(context, '/company-Simple');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "회사소개",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Text(
                          "취업",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 25),
                          child: const Text(
                            "대학",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () async {
                          Uri url = Uri.parse(
                              "https://iqua3000.github.io/tuti-frontend/#/webLogin");
                          _launchInBrowswer(url);
                          // Navigator.pushNamed(context, '/webLogin');
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 25),
                          child: const Text(
                            "커뮤니티",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 25),
                          child: const Text(
                            "스터디카페",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      width: 100,
                      height: 30,
                      margin: const EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.lightGreen[800]),
                      child: const Center(
                        child: Text(
                          "Contact Us",
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
                                  Text('인스타그램'),
                                  Text("카카오톡"),
                                  Text("라인"),
                                  Text("이메일")
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: const Text("한국어")),
                const SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home-Jp");
                    },
                    child: const Text("日本語")),
                const SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home-En");
                    },
                    child: const Text("English")),
                const SizedBox(width: 10),
                const Text("Tiếng Việt"),
                const SizedBox(width: 10),
                const Text("中文（繁體）"),
                const SizedBox(width: 10),
                const Text("o'zbek"),
                const SizedBox(width: 10),
                const Text("Монгол"),
                const SizedBox(width: 30),
              ],
            ),
            // 배너 광고 화면
            // Container(
            //   height: 170,
            //   color: Colors.grey[100],
            //   alignment: Alignment.center,
            //   child: Container(
            //     margin: const EdgeInsets.fromLTRB(35, 10, 35, 30),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12.0),
            //         color: Colors.white,
            //         border: Border.all(
            //           color: Colors.grey.shade200,
            //           width: 2,
            //         )),
            //   ),
            // ),
            // 배너 회사 소개
            Stack(
              children: [
                Container(
                  color: Colors.pink[200],
                  width: size.width,
                  height: 350,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "세상을 넓히고 꿈을 이루는 학생들을 위한\n특별한 경험을 찾고 계신가요? \u{1F393}\u{2728}",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "우리는 전세계의 대학생들을 위한 다양한 활동 프로그램을\n한 곳에서 소개하는 플랫폼입니다! 🌍📚\n공부, 취업, 문화 교류, 봉사활동 등 다양한 분야에서\n체험하고 배울 수 있는 프로그램들을 모았어요.\n지금 바로 저희 플랫폼을 방문하여 여러분의 꿈을 키우고\n더 넓은 세상을 만나보세요! 💡💼",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'images/icon.png',
                      scale: 2,
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "등록할 준비가 되셨나요?",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.pink[200],
                ),
                child: const Center(
                  child: Text(
                    "지금 신청하세요",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "#교환학생",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "#인턴쉽",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "#글로벌교류",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "#진로탐색",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "#이력강화",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "#국제봉사",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "이벤트",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () async {
                    Uri url = Uri.parse(
                        "https://www.chf.or.kr/cont/view/fest/month/menu/210?thisPage=1&idx=109487&searchCategory1=600&searchCategory2=&searchCategory3=&searchField=all&searchDate=202404&weekSel=undefined&searchText=");
                    _launchInBrowswer(url);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 300,
                        child: Image.asset('images/moon.jpg'),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "2024 창덕궁 달빛기행(상반기)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "장소 창덕궁",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "기간 2024.4.11 ~ 2024.6.2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "시간 (1부)19:20, 19:25, 19:30",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "        (2부)20:00, 20:05, 20:10",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    Uri url = Uri.parse("https://www.k-illustrationfair.com/");
                    _launchInBrowswer(url);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: 190,
                        height: 300,
                        child: Image.asset('images/seoul.jpg'),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "K-일러스트레이션페어 부산 2024",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "장소 부산 벡스코 제2전시장 4홀",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "기간 2024.7.26(금)~28(일)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "시간 오전 11시 ~ 오후 6시",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    Uri url = Uri.parse("http://www.bba48.or.kr/");
                    _launchInBrowswer(url);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 300,
                        child: Image.asset('images/busan.jpg'),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "부산연등회",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "장소 송상현광장 및 부산시민공원 일원",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "기간 2024.4.26 ~ 2024.5.12",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "시간 오후 6시",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
              ],
            ),
            const SizedBox(height: 50),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  color: const Color.fromRGBO(24, 78, 119, 1),
                  width: size.width,
                  height: 250,
                ),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      width: 100,
                      child: Image.asset('images/medal.png'),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          "(주)이쿠아",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(""),
                        Text(
                          "기업명   (주) 이쿠아",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "주    소   서울 강남구 테헤란로22길 15, 2층",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "전    화   010.7415.8850",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }
  }

  Future<void> _launchInBrowswer(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception("Could not launch $url");
    }
  }
}
