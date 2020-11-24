part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Portfolio',
      subtitle: 'Hi there, welcome to my portfolio',
      backColor: 'FAFAFC'.toColor(),
      child: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            height: 150.0,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi I'm Aditya",
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "I'm now a student. I love Flutter and other mobile development stuff.",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset('assets/aditya.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Text(
              'App Design',
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            padding: EdgeInsets.symmetric(vertical: 16.0),
            height: 240.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: porfolioList.map((portfolio) {
                return FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(portfolio: portfolio);
                    }));
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(portfolio.assetImage),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Certifications',
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200.0,
            margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: certificates.map((certificate) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    child: Image.asset(certificate.assetImage),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

var porfolioList = [
  Portfolio(
    name: 'Craft With Me',
    description:
        'Craft With Me is a edu tech website. You can learn, discuss, and contribute with showcasing your personal project and get the amazing feedback',
    assetImage: 'assets/1.jpg',
    platform: ['assets/uplabs.jpg', 'assets/dribbble.png'],
  ),
  Portfolio(
    name: 'ToDo App',
    description:
        'I design this simple ToDo App for personal use. You can add todo daily and can easily edit the todo with your own preference',
    assetImage: 'assets/2.jpg',
    platform: ['assets/uplabs.jpg', 'assets/dribbble.png'],
  ),
  Portfolio(
    name: 'TokoSaya',
    description:
        'I make the e-commerce design for selling any kind of stuff. You can post your goods and get the customer. This design is clean and beautiful',
    assetImage: 'assets/3.jpg',
    platform: ['assets/uplabs.jpg', 'assets/dribbble.png'],
  )
];

var certificates = [
  Certificate(assetImage: 'assets/certificates/memulai-dart.jpg'),
  Certificate(assetImage: 'assets/certificates/memulai-kotlin.jpg'),
  Certificate(assetImage: 'assets/certificates/memulai-python.jpg'),
  Certificate(assetImage: 'assets/certificates/android-pemula.jpg'),
  Certificate(assetImage: 'assets/certificates/bfaa.jpg'),
  Certificate(assetImage: 'assets/certificates/android-jetpack.jpg'),
  Certificate(assetImage: 'assets/certificates/azure-fundamental.jpg'),
  Certificate(assetImage: 'assets/certificates/azure-cloud.jpg'),
  Certificate(assetImage: 'assets/certificates/belajar-ar.jpg'),
  Certificate(assetImage: 'assets/certificates/line-chat-bot.jpg'),
];
