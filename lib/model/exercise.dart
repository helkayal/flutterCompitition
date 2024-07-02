class Exercise {
  final String name;
  final String imagePath;
  final List<ExerciseTranings> trainings;

  Exercise({
    required this.name,
    required this.imagePath,
    required this.trainings,
  });

  static List<Exercise> getExercises() {
    return [
      Exercise(name: 'Back', imagePath: 'assets/Back/main.png', trainings: [
        ExerciseTranings(
            image: "assets/Back/1.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Back/2.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Back/3.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Back/4.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Back/5.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Back/6.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
      ]),
      Exercise(name: 'Biceps', imagePath: 'assets/Biceps/main.jpg', trainings: [
        ExerciseTranings(
            image: "assets/Biceps/1.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Biceps/2.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Biceps/3.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Biceps/4.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Biceps/5.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Biceps/6.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Biceps/7.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/Biceps/8.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
      ]),
      Exercise(name: 'Chest', imagePath: 'assets/chest/main1.jpg', trainings: [
        ExerciseTranings(
            image: "assets/chest/1.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/chest/2.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/chest/3.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/chest/4.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/chest/5.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/chest/6.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/chest/7.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/chest/8.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
      ]),
      Exercise(name: 'Legs', imagePath: 'assets/legs/main.jpeg', trainings: [
        ExerciseTranings(
            image: "assets/legs/1.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/legs/2.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/legs/3.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/legs/4.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/legs/5.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/legs/6.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/legs/7.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
        ExerciseTranings(
            image: "assets/legs/8.gif",
            desc: "The exercise performs 10 reps in 3 sets"),
      ]),
      Exercise(
          name: 'Shoulder',
          imagePath: 'assets/shoulder/main.jpg',
          trainings: [
            ExerciseTranings(
                image: "assets/shoulder/1.gif",
                desc: "The exercise performs 10 reps in 3 sets"),
            ExerciseTranings(
                image: "assets/shoulder/2.gif",
                desc: "The exercise performs 10 reps in 3 sets"),
            ExerciseTranings(
                image: "assets/shoulder/3.gif",
                desc: "The exercise performs 10 reps in 3 sets"),
            ExerciseTranings(
                image: "assets/shoulder/4.gif",
                desc: "The exercise performs 10 reps in 3 sets"),
            ExerciseTranings(
                image: "assets/shoulder/5.gif",
                desc: "The exercise performs 10 reps in 3 sets"),
            ExerciseTranings(
                image: "assets/shoulder/6.gif",
                desc: "The exercise performs 10 reps in 3 sets"),
            ExerciseTranings(
                image: "assets/shoulder/7.gif",
                desc: "The exercise performs 10 reps in 3 sets"),
          ]),
    ];
  }
}

class ExerciseTranings {
  final String image;
  final String desc;

  ExerciseTranings({
    required this.image,
    required this.desc,
  });
}

class TodayExercises {
  String name;
  String date;
  String status;

  TodayExercises({
    required this.name,
    required this.date,
    required this.status,
  });
}
