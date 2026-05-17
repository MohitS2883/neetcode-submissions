class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var arr: [(Int, Int)] = []
        for (n, c) in nums.enumerated() {
            arr.append((c, n))
        }
        arr.sort {
            $0.0 < $1.0
        }
        var left = 0
        var right = nums.count - 1
        while left < right {
            var cs = arr[left].0 + arr[right].0
            if cs == target {
                var arr = [arr[left].1, arr[right].1]
                arr.sort()
                return arr
            } else if cs < target {
                left += 1
            } else {
                right -= 1
            }
        }
        return [-1, -1]
    }
}
