struct Calculator {
  func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
    var total = initialResult
    for num in nums {
      total = nextPartialResult(total, num)
    }
    return total
  }
}

let calc = Calculator()
let numbers = [1,2,3,5,6,7,8]

let addition: (Int, Int) -> Int = { $0 + $1 }

let sum = calc.reduce(numbers, using: addition, startingAt: 0)
print(sum)
