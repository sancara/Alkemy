struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int
  init (name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)


var sitUps = Exercise(name: "Sit ups", muscleGroups: ["Rectus abdominis", "Transverse abdominis", "Obliques"], reps:30, sets: 3)

var squats = Exercise(name: "Squats", muscleGroups: ["Gluteus", "Quadriceps", "Hamstrings", "adductor"], reps: 10, sets: 4)


// Routine
struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init (dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

 func printExercisePlan() {
   print("Today is \(self.dayOfWeek) and the plan is to: ")
   for exercise in self.exercises {
     print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)")
     print("That's a total of \(exercise.totalReps) of \(exercise.name)")
   }
  }
}

var mondayRegimen = Regimen (dayOfWeek: "Monday", exercises: [pushUp])

mondayRegimen.printExercisePlan()
