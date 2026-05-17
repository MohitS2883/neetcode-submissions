class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var s = Set(nums)
        let numsCount = nums.count
        let sCount = s.count
        return numsCount - sCount > 0
    }
}
