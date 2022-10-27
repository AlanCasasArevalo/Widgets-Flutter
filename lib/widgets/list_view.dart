import 'package:flutter/material.dart';
import 'package:widgets/widgets/list_view_builder.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (_) => MyListViewBuilder(),
                    );
                    
                    Navigator.push(context, route);
                  },
                  icon: Icon(Icons.login),
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      18,
                      (index) => Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        color: Colors.primaries[index],
                        child: Text("$index"),
                      ),
                    ),
                  ),
                ),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                    5,
                    (index) => Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(8),
                      height: 50,
                    ),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 150,
                ),
                Container(
                  color: Colors.green,
                  height: 350,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
