class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var ans = Array(repeating: 1, count: n)

        var left = 1
        for i in 0..<n {
            ans[i] = left
            left *= nums[i]
        }

        var right = 1
        for i in stride(from: n - 1, through: 0, by: -1) {
            ans[i] *= right
            right *= nums[i]
        }

        return ans
    }
}