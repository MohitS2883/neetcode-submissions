class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var s = Set(nums)
        let numsCount = nums.count
        let sCount = s.count
        return helper(nums)
    }

    func helper(_ nums: [Int]) -> Bool {
        var mpp: [Int: Int] = [:]
        for num in nums {
            var count = mpp[num, default: 0]
            if count == 1 {
                return true
            } else {
                mpp[num] = 1
            }
        }
        return false
    }
}
