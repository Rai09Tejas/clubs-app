import 'package:club_app/utils/colors.dart';

import 'upcoming_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/main_provider.dart';
import '../utils/assets.dart';
import 'live_now_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  static const String tag = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLiveNowSelected = true;

  void toggleSelection(bool liveNowSelected) {
    setState(() {
      isLiveNowSelected = liveNowSelected;
    });
  }

  @override
  void initState() {
    super.initState();
    // Provider.of<MainProvider>(context, listen: false).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (_, mainProvider, __) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          backgroundColor: AppColors.primaryAccent,
          leading: Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColors.mediumGrey,
                size: 30,
              ),
            ),
          ),
          centerTitle: true,
          title: Image.asset(logo, height: 50, width: 50),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: AppColors.mediumGrey,
                size: 30,
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Start Room"),
          icon: Icon(Icons.add),
          backgroundColor: AppColors.blue,
        ),
        body: Column(
          children: [
            toggleButton(),
            Expanded(
              child: isLiveNowSelected ? LiveNowScreen() : UpcomingScreen(),
            ),
          ],
        ),
      );
    });
  }

  toggleButton() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () => toggleSelection(true),
            child: Container(
              padding: EdgeInsets.only(bottom: 15.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isLiveNowSelected ? Colors.blue : Colors.transparent,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                'LIVE NOW',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isLiveNowSelected ? Colors.blue : Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () => toggleSelection(false),
            child: Container(
              padding: EdgeInsets.only(bottom: 15.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        !isLiveNowSelected ? Colors.blue : Colors.transparent,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                'UPCOMMING',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: !isLiveNowSelected ? Colors.blue : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bottomBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(book),
            onPressed: () {
              // Handle Button 2
            },
          ),
          IconButton(
            icon: SvgPicture.asset(heart),
            onPressed: () {
              // Handle Button 2
            },
          ),
          IconButton(
            icon: SvgPicture.asset(connect),
            onPressed: () {
              // Handle Button 2
            },
          ),
          IconButton(
            icon: SvgPicture.asset(calendar),
            onPressed: () {
              // Handle Button 2
            },
          ),
          IconButton(
            icon: SvgPicture.asset(person),
            onPressed: () {
              // Handle Button 2
            },
          ),
        ],
      ),
    );
  }
}
