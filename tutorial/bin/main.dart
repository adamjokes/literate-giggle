// SCSJ3623 Mobile Application Programming
// Tutorial 2.1

// Date: 01/04/2021
// Section: _________
// Room Number: 09

// Member 1's Name: NIK ADAM DANISH BIN NIK JOHARRIS    Location: MALAYSIA (i.e. where are you currently located)
// Member 2's Name: BELLARINA CHEW    Location: MALAYSIA
// Member 3's Name: MOHAMED ABDULLAH ZAYAN   Location: SKUDAI
// Member 4's Name: _____________    Location: ____________

void main() {
  //TODO Task 1: Store data as a map
  var students = {
    "A16EC4041": 57,
    "A16EC4042": 85,
    "A18CS4056": 66,
    "A16EC9043": 80,
    "A16EC4002": 57,
    "A16EC4032": 75,
    "A16EC3002": 85,
    "A16EC3003": 82,
    "A16EC4043": 83,
    "A16EC4044": 84,
    "A16EC3004": 67,
    "A16EC4045": 70,
    "A16EC4040": 53
  };

  //TODO Task 2: Print the list
  print('Matric\t\tScore');
  students.forEach((key, value) => print('$key\t$value'));

  //TODO Task 4
  String grade = calculateScores(students["A16EC4041"]);
  print(
      'Result for the student ${students.keys.elementAt(0)}, Score : ${students["A16EC4041"]}, Grade: ${grade}');

  //TODO Task 5: print the list including the grades
  print('Matric\t\tScore\tgrade');
  print('------\t\t-----\t-----');
  students.forEach(
      (key, value) => print('$key\t$value\t${calculateScores(value)}'));

  //TODO Task 6: Create a list of scores
  List scores = [];
  students.forEach((key, value) => scores.add(value));

//  var scores = students.values.toList();

  //TODO Task 7: Calculate average score
  var average = scores.reduce((total, item) => total + item) / scores.length;
  print(average);

  //TODO Task 8: Calculate the frequency of each grade
  //Using forEach
  int countA = 0, countB = 0, countC = 0, countD = 0, countE = 0;
  var counts = <String, int>{
    'A': 0,
    'B': 0,
    'C': 0,
    'D': 0,
    'E': 0,
  };

  students.forEach((key, value) {
    var grade = calculateScores(value);
    counts[grade]++; // branchless techniques

    // switch (calculateScores(value)) {
    //   case 'A':
    //     countA++;
    //     break;
    //   case 'B':
    //     countB++;
    //     break;
    //   case 'C':
    //     countC++;
    //     break;
    //   case 'D':
    //     countD++;
    //     break;
    //   case 'E':
    //     countE++;
    //     break;
    // }
  });

  var gradeFrequency = {
    "A": countA,
    "B": countB,
    "C": countC,
    "D": countD,
    "E": countE
  };

  // var greeting = "hello 'World'";

  print("Grade\t\tFreq (using forEach)");
  print('------\t\t-----');
  gradeFrequency.forEach((key, value) => print('$key\t\t$value'));

  //Using fold
  var gradeFreq = {'A': 0, 'B': 0, 'C': 0, 'D': 0, 'E': 0};
  students.values.fold(0, (prev, curr) {
    ++gradeFreq[calculateScores(curr)];
  });

  // var total = scores.fold(0, (sum, n) => sum + n)
  var freqs = scores.fold({'A': 0, 'B': 0, 'C': 0, 'D': 0, 'E': 0},
      (counts, score) => counts[calculateScores(score)]);

  print("Grade\t\tFreq (using fold)");
  print('------\t\t-----');
  gradeFreq.forEach((key, value) => print('$key\t\t$value'));

  //TODO Task 9: Remove all students that earn grade lower than B
  students.removeWhere((key, value) => value < 75);
  print('Matric\t\tScore\tgrade');
  print('------\t\t-----\t-----');
  students.forEach(
      (key, value) => print('$key\t$value\t${calculateScores(value)}'));
}

//TODO  Task 3: Define function that converts score to letter grade
String calculateScores(var score) {
  if (score >= 85 && score <= 100)
    return "A";
  else if (score >= 75 && score <= 84)
    return "B";
  else if (score >= 65 && score <= 74)
    return "C";
  else if (score >= 50 && score <= 64)
    return "D";
  else if (score >= 0 && score <= 49)
    return "E";
  else
    return "invalid score";
}
