// 入力された文字列を解析して：
// - 文字数
// - 数字の個数
// - アルファベットの個数
// - 特殊文字の個数
// を表示

let input_text: String = readLine() ?? ""

if input_text.isEmpty {
    print("入力が空です。")
}

var char_count: Int = 0
var digit_count: Int = 0
var alpha_count: Int = 0
var special_count: Int = 0

for char in input_text {
    char_count += 1

    if char.isNumber {
        digit_count += 1
    } else if char.isLetter {
        alpha_count += 1
    } else {
        special_count += 1
    }
}

print("文字数: \(char_count)")
print("数字の個数: \(digit_count)")
print("アルファベットの個数: \(alpha_count)")
print("特殊文字の個数: \(special_count)")
