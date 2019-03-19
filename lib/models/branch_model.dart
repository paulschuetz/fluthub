import 'package:fluthub/network/dto/branch.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

enum ModelState { initialized, isLoading, loaded }

class BranchModel extends Model {
  final GithubApi _githubApi;
  final String _repositoryName;

  BranchModel({@required GithubApi githubApi, @required String repositoryName})
      : _githubApi = githubApi,
        _repositoryName = repositoryName {
    fetchBranches();
  }

  static BranchModel of(BuildContext context) =>
      ScopedModel.of<BranchModel>(context);

  ModelState _state = ModelState.initialized;
  ModelState get state => _state;

  Branch get currentBranch => _branches[_branchIndex];
  var _branchIndex = 0;
  void setBranchIndex(int index) {
    if (index > _branches.length)
      throw new ArgumentError(
          "index was $index but can only be between 0 and ${_branches.length}.");
    _branchIndex = index;
    notifyListeners();
  }

  List<Branch> get branches =>
      _branches != null ? List.unmodifiable(_branches) : [];
  List<Branch> _branches = [];
  Future<void> fetchBranches() async {
    this._state = ModelState.isLoading;
    notifyListeners();
    var branches = await _githubApi.fetchBranches(this._repositoryName);
    // sort list => master at index 0
    branches.sort(_sortMasterToBegin);
    this._branches = branches;
    this._state = ModelState.loaded;
    notifyListeners();
  }

  int _sortMasterToBegin(Branch a, Branch b) {
    if (a.name == "master") return -1;
    if (b.name == "master") return 1;
    return 0;
  }
}
