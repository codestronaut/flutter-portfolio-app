part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;
  const GeneralPage({
    this.title = 'Title',
    this.subtitle = 'Subtitle',
    this.onBackButtonPressed,
    this.child,
    this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed, title, subtitle),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 24.0,
                      width: double.infinity,
                      color: "FAFAFC".toColor(),
                    ),
                    child ?? SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Function onBackButtonPressed;
  final String title;
  final String subtitle;

  CustomAppBar(this.onBackButtonPressed, this.title, this.subtitle, {Key key})
      : preferredSize = Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: 'F5F5F5'.toColor(),
              offset: Offset(0, 2),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Row(
          children: [
            onBackButtonPressed != null
                ? Container(
                    padding: EdgeInsets.all(16.0),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  )
                : SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    color: "8D92A3".toColor(),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
