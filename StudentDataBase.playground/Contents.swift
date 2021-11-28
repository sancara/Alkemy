struct Student {
  let name: String
  let favoriteTeacherID: Int
}

struct Teacher {
  let name: String
  let id: Int

  var email: String?
  var hairColor: String?
}

struct School {
  let name: String
  let teachers: [Teacher]

  func getTeacher(withID id: Int) -> Teacher? {
    for teacher in teachers {
      if teacher.id == id {
        return teacher
      }
    }
    return nil
  }

  func printFavoriteTeacherInfo(for student: Student) {
    guard let favoriteTeacher = getTeacher(withID: student.favoriteTeacherID) else {
      print("There is no such a teacher here.")
      return
    }
      print("\(student.name)'s favorite teacher is \(favoriteTeacher.name)")
        print("They have \(favoriteTeacher.hairColor ?? "no") hair")
        guard let email = favoriteTeacher.email else {
            print("They don't have an email address on file")
            return
  }
  print("Their email address is \(email)")
  }

}


let teachers =
[Teacher(name: "Cecilia", id: 3, email: "mandragora@gamil.com", hairColor: "green"),
Teacher(name: "Rosa", id: 4, email: nil, hairColor: nil),
Teacher(name: "Raquel", id: 2),
Teacher(name: "Samanta", id: 1, email: nil, hairColor: "red")
]

let school1 = School(name: "My English School", teachers: teachers)

let student1 = Student(name: "Laura", favoriteTeacherID: 3)

let student2 = Student(name: "Santi", favoriteTeacherID: 5)

school1.printFavoriteTeacherInfo(for: student1)
school1.printFavoriteTeacherInfo(for: student2)

