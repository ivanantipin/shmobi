import 'package:flutter/material.dart';
import 'package:grevel/gen/domain.pb.dart';
import 'package:intl/intl.dart';

import '../keyvalue_card.dart';

class StrategyWidget extends StatelessWidget {
  final Stream<StratDescription> stream;

  const StrategyWidget(this.stream);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, AsyncSnapshot<StratDescription> snapshot) {
        if (snapshot.hasData) {
          return _sliverList(snapshot.data);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(child: Text("No positions"));
      },
    );
  }

  Widget _sliverList(StratDescription description) {
    var ind = description.closedPositions.length;
    var closedPositions = description.closedPositions.sublist(ind - 30, ind);
    closedPositions = closedPositions.reversed.toList();
    return Container(
        color: Colors.white,
        child: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            title: Text("Open positions"),
            pinned: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return mapPosition(description.openPositions[index]);
          }, childCount: description.openPositions.length)),
          SliverAppBar(
            title: Text("Closed positions"),
            pinned: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return mapPosition(closedPositions[index]);
          }, childCount: closedPositions.length)),
        ]));
  }

  KeyValuesCard mapPosition(Position position) {
    var ret = List<List<Widget>>();
    ret
      ..add([
        KeyValueStyled(
            "",
            "${position.ticker}",
            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        KeyValueStyled(
            "",
            "${formatPnl(position)} %",
            TextStyle(fontWeight: FontWeight.bold),
            TextStyle(
                fontSize: 25,
                color: position.pnl > 0 ? Colors.green : Colors.red))
      ])
      ..add([
        KeyValueStyled("open ", position.openPrice.toStringAsFixed(2),
            TextStyle(fontWeight: FontWeight.bold), TextStyle()),
        KeyValueStyled("close ", position.closePrice.toStringAsFixed(2),
            TextStyle(fontWeight: FontWeight.bold), TextStyle())
      ])
      ..add([
        fmtTs(position.timestamp.toInt()),
        fmtTs(position.closeTimestamp.toInt())
      ]);

    return KeyValuesCard(ret);
  }

  String formatPnl(Position pos) {
    return ((pos.closePrice - pos.openPrice) / pos.openPrice * 100.0)
        .toStringAsFixed(1);
  }
}

Widget fmtTs(int ts) {
  String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM')
      .format(new DateTime.fromMillisecondsSinceEpoch(ts));

  return Center(
      child: Text(
    formattedDate,
    textAlign: TextAlign.center,
    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
  ));
}
