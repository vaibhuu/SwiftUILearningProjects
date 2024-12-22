import UIKit

var greeting = "Hello, playground"

print(greeting)


let intAray:[Int] = Array(1...1000)

func sortArray(input: [Int]) -> [Int] {
    var outputArray = [Int]()
    
    return outputArray
}

extension Array {
    func filterWith(_ isIncluded: (Element) -> Bool) -> [Element] {
        var newArr = [Element]()
        for i in self {
            if isIncluded(i) {
                newArr.append(i)
            }
        }
        return newArr
    }
}
