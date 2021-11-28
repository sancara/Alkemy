struct Calculator {
  func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
    var total = initialResult
    for num in nums {
      total = nextPartialResult(total, num)
    }
    return total
  }

  func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
      var filteredNums = [Int]()
      for num in nums {
        if isIncluded(num){
          filteredNums.append(num)
        }
      }
    return filteredNums
  }
}

let calc = Calculator()
let numbers = [1,2,3]

let addition: (Int, Int) -> Int = { $0 + $1 }

let sum = calc.reduce(numbers, using: addition, startingAt: 0)
print(sum)

let rainfallInInches = [5,2,8,0,0,4]
let rainyDays = calc.filter(rainfallInInches, using: { rainFall in rainFall != 0 })
print(rainyDays)
