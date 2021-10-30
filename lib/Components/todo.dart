import 'package:flutter/material.dart';

createTodo(String todo) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Card(
        shadowColor: Colors.black,
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.today_outlined,
                color: Colors.red,
              ),
              title: Text(
                todo,
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text('Till : 8pm'),
              trailing: Icon(
                Icons.pending_actions,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.green, fontSize: 17),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
                TextButton(
                  child: const Text('Snooze', style: TextStyle(fontSize: 17)),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
