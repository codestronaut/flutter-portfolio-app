part of 'pages.dart';

class DetailPage extends StatelessWidget {
  final Portfolio portfolio;
  const DetailPage({Key key, this.portfolio});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: portfolio.name,
      subtitle: 'Portfolio detail page',
      onBackButtonPressed: () {
        Navigator.pop(context);
      },
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(portfolio.assetImage),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    portfolio.name,
                    style: GoogleFonts.poppins(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  FavoriteButton(),
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                portfolio.description,
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Available on:',
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 46.0,
                child: Row(
                  children: portfolio.platform.map((images) {
                    return Container(
                      margin: EdgeInsets.only(right: 8.0),
                      child: Image(
                        image: AssetImage(images),
                        height: 46.0,
                        width: 46.0,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  FavoriteButton({Key key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.redAccent,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
