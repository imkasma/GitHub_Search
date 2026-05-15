import 'package:flutter/material.dart';
import 'models/search_result_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key, required this.items});

  final List<SearchResultItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Result')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item.owner.avatarUrl),
            ),
            title: Text(
              item.fullName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(item.owner.login),
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              // sementara hanya print url
              debugPrint(item.htmlUrl);
            },
          );
        },
      ),
    );
  }
}
