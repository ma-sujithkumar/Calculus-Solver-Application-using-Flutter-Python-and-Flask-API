class Solution {
  String solution;
  Solution({this.solution});
  factory Solution.fromJson(Map<String, dynamic> json) {
    return Solution(solution: json["solution"]);
  }
}
