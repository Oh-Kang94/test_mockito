import 'package:flutter/material.dart';
import 'package:test_mockito/datasource/remote_datasource.dart';
import 'package:test_mockito/model/auction.dart';
import 'package:test_mockito/repository/auctions_repository.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder<List<Auction>>(
            future:
                AuctionsRepositoryImpl(remoteDatasource: RemoteDatasourceImpl())
                    .getAuctionList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index].title),
                      subtitle: Text(snapshot.data![index].content),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
