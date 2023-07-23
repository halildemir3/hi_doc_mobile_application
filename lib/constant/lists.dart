class Doctor {
  final String name;
  final String branche;
  final String score;
  final String distance;

  Doctor(
      {required this.name,
      required this.branche,
      required this.score,
      required this.distance});
}

List topDoctor = [
  Doctor(
      name: "Dr. Marcus Horizon",
      branche: "Chardiologist",
      score: "4.7",
      distance: "800m"),
  Doctor(
      name: "Dr. Maria Elena",
      branche: "Psychologist",
      score: "4.8",
      distance: "850m"),
  Doctor(
      name: "Dr. Stefi Jessi",
      branche: "Orthopedist",
      score: "4.9",
      distance: "700m"),
  Doctor(
      name: "Dr. Gerty Cori",
      branche: "Orthopedist",
      score: "4.5",
      distance: "1600m"),
  Doctor(
      name: "Dr. Marcus Horizon",
      branche: "Chardiologist",
      score: "4.7",
      distance: "800m"),
  Doctor(
      name: "Dr. Maria Elena",
      branche: "Psychologist",
      score: "4.8",
      distance: "850m"),
  Doctor(
      name: "Dr. Stefi Jessi",
      branche: "Orthopedist",
      score: "4.9",
      distance: "700m"),
  Doctor(
      name: "Dr. Gerty Cori",
      branche: "Orthopedist",
      score: "4.5",
      distance: "1600m"),
];

class Day {
  final String day;
  final String date;
  final bool isChecked;

  Day( {required this.isChecked,
    required this.day,
    required this.date,
  });
}

List days = [
  Day(day: "Mon", date: "21",isChecked: false),
  Day(day: "Tue", date: "22",isChecked: false),
  Day(day: "Wed", date: "23",isChecked: false),
  Day(day: "Thu", date: "24",isChecked: true),
  Day(day: "Fri", date: "25",isChecked: false),
  Day(day: "Sat", date: "26",isChecked: false),
  Day(day: "Sun", date: "27",isChecked: false),
];
List category=["Covid-19","Diet","Fitness"];