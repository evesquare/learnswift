import Foundation

let target_string: String = readLine() ?? ""

if target_string.contains("+") {
    let numbers = target_string.split(separator: "+")

    let first_number = Int(numbers[0]) ?? 0
    let second_number = Int(numbers[1]) ?? 0

    print(first_number + second_number)
} else if target_string.contains("-") {
    let numbers = target_string.split(separator: "-")

    let first_number = Int(numbers[0]) ?? 0
    let second_number = Int(numbers[1]) ?? 0

    print(first_number - second_number)
} else if target_string.contains("*") {
    let numbers = target_string.split(separator: "*")

    let first_number = Int(numbers[0]) ?? 0
    let second_number = Int(numbers[1]) ?? 0

    print(first_number * second_number)
} else if target_string.contains("/") {
    let numbers = target_string.split(separator: "/")

    let first_number = Int(numbers[0]) ?? 0
    let second_number = Int(numbers[1]) ?? 0

    do {
        if second_number == 0 {
            throw NSError(domain: "Division by zero", code: 1, userInfo: nil)
        }
    } catch {
        print("Error: Division by zero is not allowed.")
        exit(1)
    }

    print(first_number / second_number)
}
