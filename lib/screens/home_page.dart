import 'package:camp_yellow/widgets/achivements.dart';
import 'package:camp_yellow/widgets/clan_members.dart';
import 'package:camp_yellow/widgets/pink_text.dart';
import 'package:camp_yellow/widgets/yellow_text.dart';
import 'package:flutter/material.dart';

import '../widgets/clan_diss.dart';
import '../widgets/live_clan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final achivementsListSpacing = 10.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.yellow,
                      width: 1,
                    )),
                    child: Image.asset(
                      'op.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 10),
                          Text(
                            'Clan name: Lorem ipsum',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '28 members, 5 online',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: achivementsListSpacing),
            const Divider(color: Colors.white),
            SizedBox(height: achivementsListSpacing),
            const YellowText(text: 'Achivements'),
            SizedBox(height: achivementsListSpacing),
            AchivementsList(
              leading: const PinkText(text: 'Current league'),
              trailing: Image.asset('icons8-shield-96.png'),
            ),
            SizedBox(height: achivementsListSpacing),
            const AchivementsList(
              leading: PinkText(text: 'League ranking'),
              trailing: YellowText(text: '11th'),
            ),
            SizedBox(height: achivementsListSpacing),
            const AchivementsList(
              leading: PinkText(text: 'Experience'),
              trailing: YellowText(text: '2000 xp'),
            ),
            SizedBox(height: achivementsListSpacing),
            const AchivementsList(
              leading: PinkText(text: '# of wins'),
              trailing: YellowText(text: '3'),
            ),
            SizedBox(height: achivementsListSpacing),
            const Divider(color: Colors.white),
            SizedBox(height: achivementsListSpacing),
            const YellowText(text: 'Past featured performance '),
            SizedBox(height: achivementsListSpacing),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 1),
                  SizedBox(
                    width: 120,
                    child: Image.asset(
                        'casual-life-3d-young-man-in-headset-using-computer.png'),
                  ),
                  const Flexible(
                    child: SizedBox(
                      width: 300,
                      child: PinkText(
                          text: 'Priya in the International Debating League'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: achivementsListSpacing),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 1),
                  SizedBox(
                    width: 120,
                    child: Image.asset(
                        'casual-life-3d-young-man-in-headset-using-computer.png'),
                  ),
                  const Flexible(
                    child: SizedBox(
                      width: 300,
                      child: PinkText(text: 'Akash in Global Quizzing Finals'),
                    ),
                  )
                ],
              ),
            ),
            const Center(child: YellowText(text: "See more")),
            SizedBox(height: achivementsListSpacing),
            const Divider(color: Colors.white),
            SizedBox(height: achivementsListSpacing),
            const YellowText(text: 'Live clan activities on platform'),
            SizedBox(height: achivementsListSpacing),
            const liveClan(title: 'Live trading championship'),
            SizedBox(height: achivementsListSpacing),
            const liveClan(title: 'Treasure hunt'),
            SizedBox(height: achivementsListSpacing),
            const Center(child: YellowText(text: 'See more')),
            SizedBox(height: achivementsListSpacing),
            const Divider(color: Colors.white),
            SizedBox(height: achivementsListSpacing),
            const YellowText(text: 'Clan discussions'),
            SizedBox(height: achivementsListSpacing),
            const ClanDiss(
                topString: 'General thread:',
                bottomString: '15 unread messages'),
            SizedBox(height: achivementsListSpacing),
            const ClanDiss(
                topString: '(live) Anyone enthu for trading league..',
                bottomString: '10 unread messages'),
            SizedBox(height: achivementsListSpacing),
            const ClanDiss(
                topString: '(live) Anyone enthu for trading league..',
                bottomString: '10 unread messages'),
            SizedBox(height: achivementsListSpacing),
            const Center(child: YellowText(text: "See more")),
            SizedBox(height: achivementsListSpacing),
            const Divider(color: Colors.white),
            SizedBox(height: achivementsListSpacing),
            const YellowText(text: 'Clan members'),
            SizedBox(height: achivementsListSpacing),
            ClamMembers(achivementsListSpacing: achivementsListSpacing),
            SizedBox(height: achivementsListSpacing),
            ClamMembers(achivementsListSpacing: achivementsListSpacing),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Star',
          icon: Icon(Icons.star),
        ),
        BottomNavigationBarItem(
          label: 'Leaderboard',
          icon: Icon(Icons.leaderboard_sharp),
        ),
        BottomNavigationBarItem(
          label: 'People',
          icon: Icon(Icons.people_alt),
        ),
        BottomNavigationBarItem(
          label: 'Profile Pic',
          icon: Icon(Icons.account_circle_rounded),
        ),
      ],
    );
  }
}
