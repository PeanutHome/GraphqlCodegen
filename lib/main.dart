import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphqlcodegen/countries.graphql.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink =
        HttpLink('https://countries.trevorblades.com/graphql');

    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(),
      ),
    );

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        home: MyTabBar(),
      ),
    );
  }
}

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graphql codeGen'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Page 1'),
            Tab(text: 'Page 2'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Query(
        options: QueryOptions(
          document: documentNodeQueryGetAllCountries,
        ),
        builder: (QueryResult result,
            {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Center(
              child: Text('Error: ${result.exception.toString()}'),
            );
          }

          if (result.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final countriesData = Query$GetAllCountries.fromJson(result.data!);
          final countries = countriesData.countries;

          if (countries.isEmpty) {
            return Center(
              child: Text('No countries available.'),
            );
          }

          return ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              final country = countries[index];
              return ListTile(
                title: Text(country.name),
                subtitle: country.capital != null
                    ? Text(country.capital)
                    : Text('Capital data not available'),
              );
            },
          );
        },
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Data for Country PS:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Query(
            options: QueryOptions(
              document: gql('''
                query getPSCountry {
                  country(code: "PS") {
                    name
                  }
                }
              '''),
            ),
            builder: (QueryResult result,
                {VoidCallback? refetch, FetchMore? fetchMore}) {
              if (result.hasException) {
                return Center(
                  child: Text('Error: ${result.exception.toString()}'),
                );
              }

              if (result.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final countryName = result.data!['country']['name'];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(countryName, style: TextStyle(fontSize: 16)),
              );
            },
          ),
          SizedBox(height: 20),
          Text(
            'Data for Country TN:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Query(
            options: QueryOptions(
              document: gql('''
                query getTNCountry {
                  country(code: "TN") {
                    name
                  }
                }
              '''),
            ),
            builder: (QueryResult result,
                {VoidCallback? refetch, FetchMore? fetchMore}) {
              if (result.hasException) {
                return Center(
                  child: Text('Error: ${result.exception.toString()}'),
                );
              }

              if (result.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final countryName = result.data!['country']['name'];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(countryName, style: TextStyle(fontSize: 16)),
              );
            },
          ),
        ],
      ),
    );
  }
}
