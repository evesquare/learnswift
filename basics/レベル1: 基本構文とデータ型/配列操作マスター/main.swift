let target_array: [Int] = Array(1...100)

// 最大値・最小値・平均値を計算
let max_value = target_array.max() ?? 0
let min_value = target_array.min() ?? 0
let sum_value = target_array.reduce(0, +)
let average_value = Double(sum_value) / Double(target_array.count)

print("最大値: \(max_value)")
print("最小値: \(min_value)")
print("合計値: \(sum_value)")
print("平均値: \(average_value)")

// 昇順・降順ソート
let ascending_sorted = target_array.sorted()
let descending_sorted = target_array.sorted(by: >)

print("昇順ソート: \(ascending_sorted)")
print("降順ソート: \(descending_sorted)")

// 特定の値を検索（線形検索・二分検索）
let search_value = 42
let linear_search_index = target_array.firstIndex(of: search_value) ?? -1
print("線形検索 - 値 \(search_value) のインデックス: \(linear_search_index)")

// 重複要素の除去
let array_with_duplicates = [1, 2, 2, 3, 4, 4, 5]
let unique_array = Array(Set(array_with_duplicates))
print("重複要素の除去: \(unique_array)")
