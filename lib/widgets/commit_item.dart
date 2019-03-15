import 'package:fluthub/network/dto/commit.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommitItem extends StatelessWidget {
  final Commit _commit;

  const CommitItem({Key key, Commit commit})
      : this._commit = commit,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
          padding: EdgeInsets.all(5.0),
          height: 100,
          color: Colors.blueGrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _commit.commit.message,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Text(_commit.commit.author.name,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                  Spacer(),
                  Text(
                      timeago
                          .format(DateTime.parse(_commit.commit.author.date)),
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          )),
    );
  }
}
