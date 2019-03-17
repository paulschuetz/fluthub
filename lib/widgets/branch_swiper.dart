import 'package:fluthub/models/branch_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BranchSwiper extends StatelessWidget {
  const BranchSwiper({
    Key key,
    @required BranchModel branchModel,
  })  : _branchModel = branchModel,
        super(key: key);

  final BranchModel _branchModel;

  static const colors = [Colors.blueGrey, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<BranchModel>(
        builder: (context, widget, model) {
      if (_branchModel.state == ModelState.loaded) {
        return PageView.builder(
          onPageChanged: (index) => _branchModel.setBranchIndex(index),
          itemCount: _branchModel.branches.length,
          itemBuilder: (context, index) {
            print("index: $index");
            return Container(
              color: colors[index],
              child: Center(
                  child: Text(_branchModel.branches[index].name,
                      style: TextStyle(color: Colors.white))),
            );
          },
        );
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
