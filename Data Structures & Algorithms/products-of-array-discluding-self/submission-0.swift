class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var ans: [Int] = []
        for i in stride(from: 0, to: nums.count, by: 1) {
            var product = 1
            for j in stride(from: 0, to: nums.count, by: 1) {
                if i == j {
                    continue
                }
                product *= nums[j]
            }
            ans.append(product)
        }
        return ans
    }
}
