import Foundation

let filePath = "/Users/evesquare/private-git/learnswift/basics/レベル1: 基本構文とデータ型/単語カウンター/sample.txt"
do {
    let text = try String(contentsOfFile: filePath, encoding: .utf8)
    let plain_words = text.replacingOccurrences(of: ",", with: "").replacingOccurrences(
        of: ".", with: ""
    ).components(separatedBy: .whitespacesAndNewlines).filter { !$0.isEmpty }

    let word_dict = Dictionary(grouping: plain_words, by: { $0 }).mapValues { $0.count }
    let sorted_word_dict = word_dict.sorted { $0.value > $1.value }
    for (word, count) in sorted_word_dict {
        print("\(word): \(count)")
    }
} catch {
    print("ファイルの読み込みに失敗しました:")
}
