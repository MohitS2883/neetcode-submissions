class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var arr: [Int] = []
        for i in stride(from: 0, to: nums.count, by: 1) {
            for j in stride(from: i + 1, to: nums.count, by: 1) {
                if nums[i] + nums[j] == target {
                    arr.append(i)
                    arr.append(j)
                }
            }
        } 
        return arr
    }
}
