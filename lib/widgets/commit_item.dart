import 'package:fluthub/network/dto/commit.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommitItem extends StatelessWidget {
  final Commit _commit;
  final bool _isFirst;
  final bool _isLast;

  const CommitItem(
      {Key key, Commit commit, bool isFirst = false, bool isLast = false})
      : this._commit = commit,
        this._isFirst = isFirst,
        this._isLast = isLast,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(children: <Widget>[
          CustomPaint(
              foregroundPainter: TimeLinePainter(
                  isFirst: _isFirst,
                  isLast: _isLast,
                  color: Theme.of(context).primaryColor),
              child: Container(
                width: 50,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  color: Theme.of(context).primaryColor,
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
                              timeago.format(
                                  DateTime.parse(_commit.commit.author.date)),
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}

class TimeLinePainter extends CustomPainter {
  final bool _isFirst;
  final bool _isLast;
  final Color _color;

  TimeLinePainter({bool isFirst = false, bool isLast = false, Color color})
      : this._isFirst = isFirst,
        this._isLast = isLast,
        _color = color ?? Colors.black;

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = Paint()
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3.0;

    Paint dot = Paint()
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    if (_isFirst) {
      canvas.drawLine(Offset(size.width / 2, size.height / 2),
          Offset(size.width / 2, size.height), line);
    } else if (_isLast) {
      canvas.drawLine(Offset(size.width / 2, 0),
          Offset(size.width / 2, size.height / 2), line);
    } else {
      canvas.drawLine(
          Offset(size.width / 2, 0), Offset(size.width / 2, size.height), line);
    }

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 8.0, dot);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
