import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black54),
                SizedBox(width: 10),
                Text(
                  'Search...',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.yellow[600],
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(text: "PLAYERS"),
              Tab(text: "TEAMS"),
              Tab(text: "TOURNAMENTS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PlayersTab(),
            TeamsTab(),
            TournamentsTab(),
          ],
        ),
      ),
    );
  }
}

class PlayersTab extends StatelessWidget {
  final List<Map<String, String>> players = [
    {"name": "@bakaar", "team": "Bakar"},
    {"name": "@bellfruit", "team": "B8 Fruiters"},
    {"name": "@jentek", "team": "BB Futbolka"},
    // Add more players here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: players.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(players[index]["name"]!),
          subtitle: Text(players[index]["team"]!),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: Colors.grey[200],
            ),
            child: Text("Follow Back"),
          ),
        );
      },
    );
  }
}

class TeamsTab extends StatelessWidget {
  final List<Map<String, String>> teams = [
    {"name": "@baskart11", "team": "Basket Event"},
    {"name": "@stemaflorida", "team": "Craftmans Cricket Club"},
    {"name": "@mindence", "team": "Madden Cricket Club"},
    // Add more teams here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teams.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.sports_cricket, color: Colors.white),
          ),
          title: Text(teams[index]["name"]!),
          subtitle: Text(teams[index]["team"]!),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: index == 1 ? Colors.grey[200] : Colors.yellow[600],
            ),
            child: Text(index == 1 ? "Unfollow" : "Follow"),
          ),
        );
      },
    );
  }
}

class TournamentsTab extends StatelessWidget {
  final List<Map<String, String>> tournaments = [
    {"name": "@boxcricketleague", "team": "Box Cricket League 2024"},
    {"name": "@delhippl24", "team": "Delhi Cup 2024"},
    {"name": "@streetcriclg", "team": "Street League Delhi"},
    // Add more tournaments here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tournaments.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.emoji_events, color: Colors.white),
          ),
          title: Text(tournaments[index]["name"]!),
          subtitle: Text(tournaments[index]["team"]!),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: index == 1 ? Colors.grey[200] : Colors.yellow[600],
            ),
            child: Text(index == 1 ? "Unfollow" : "Follow Back"),
          ),
        );
      },
    );
  }
}

